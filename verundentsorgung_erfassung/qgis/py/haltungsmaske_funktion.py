from qgis.PyQt.QtWidgets import QPushButton, QDialog, QLineEdit, QComboBox
from qgis.core import QgsProject, QgsExpressionContext
import time


def my_form_open(dialog, layer, feature):
    context = QgsExpressionContext()

    form_start = time.perf_counter()

    # -----------------------------
    # SAFE UI HELPER
    # -----------------------------
    def safe_set_text(widget, value):
        if widget:
            widget.setText(str(value) if value is not None else "")

    # -----------------------------
    # SOHLHÖHE FUNCTION (TIMED)
    # -----------------------------
    def get_sohlhohe(id_knoten, knoten_pos):

        start = time.perf_counter()

        LAYER_WHITELIST = [
            "Schacht", "Abscheider", "Auslauf", "Dueker", "Einleitungsstellen",
            "Pumpwerk", "Klaertank", "Klaeranlage", "Loeschwasserentnahmestelle",
            "Schachtdeckel", "Schieber", "sonstige_Anlage", "Spuehlhydrant",
            "Verbindungen", "Haltungen"
        ]

        if not id_knoten:
            return

        if str(id_knoten) == "'00000000-0000-0000-0000-000000000000'::uuid":
            return

        for lyr in QgsProject.instance().mapLayers().values():

            if not lyr.isValid():
                continue

            if lyr.name() not in LAYER_WHITELIST:
                continue

            if lyr.type() != lyr.VectorLayer:
                continue

            expr = f'"id" = \'{id_knoten}\''

            for f in lyr.getFeatures(expr):

                value = None

                if "sohlhoehe" in f.fields().names():
                    value = f["sohlhoehe"]
                elif "rsa" in f.fields().names():
                    value = f["rsa"]
                else:
                    continue

                print(f"[DEBUG] {lyr.name()} ID={id_knoten} value={value}")

                if knoten_pos == "oben":
                    sohle = dialog.findChild(QLineEdit, "sohle_ablaufschacht")
                    safe_set_text(sohle, value)

                    deckel = dialog.findChild(QLineEdit, "deckelhoehe_start")
                    if deckel:
                        safe_set_text(deckel, f["deckelhoehe"] if "deckelhoehe" in f.fields().names() else "")

                elif knoten_pos == "unten":
                    sohle = dialog.findChild(QLineEdit, "sohle_einlaufschacht")
                    safe_set_text(sohle, value)

                    deckel = dialog.findChild(QLineEdit, "deckelhoehe_ende")
                    if deckel:
                        safe_set_text(deckel, f["deckelhoehe"] if "deckelhoehe" in f.fields().names() else "")

        print(f"[TIMER] get_sohlhohe({knoten_pos}): {time.perf_counter() - start:.4f}s")

    # -----------------------------
    # UI ELEMENTS
    # -----------------------------
    button = dialog.findChild(QPushButton, "button_action")
    button_2 = dialog.findChild(QPushButton, "button_action_2")
    button_save_close = dialog.findChild(QPushButton, "button_save_close")
    button_cancel_close = dialog.findChild(QPushButton, "button_cancel_close")
    button_oben = dialog.findChild(QPushButton, "start")
    button_unten = dialog.findChild(QPushButton, "ende")

    line_edit = dialog.findChild(QLineEdit, "lineEdit")
    laenge_widget = dialog.findChild(QLineEdit, "laenge")
    nennweite_widget = dialog.findChild(QLineEdit, "nennweite")
    material_widget = dialog.findChild(QComboBox, "id_st_vw_material")
    haltungsgefaelle_widget = dialog.findChild(QLineEdit, "haltungsgefaelle")

    # -----------------------------
    # FEATURE IDS
    # -----------------------------
    oben_field = "id_knoten_oben"
    unten_field = "id_knoten_unten"

    if oben_field in feature.fields().names():
        val = feature[oben_field]
        if val not in (None, ""):
            get_sohlhohe(val, "oben")

    if unten_field in feature.fields().names():
        val = feature[unten_field]
        if val not in (None, ""):
            get_sohlhohe(val, "unten")

    # -----------------------------
    # ACTION BUTTONS
    # -----------------------------
    def run_action(name):
        for act in layer.actions().actions():
            if act.name() == name:
                layer.actions().doAction(act.id(), feature, context)
                break

    if button:
        button.clicked.connect(lambda: run_action("Dokumente Ansehen"))

    if button_2:
        button_2.clicked.connect(lambda: run_action("Dokument Hinzufügen"))

    if button_oben:
        button_oben.clicked.connect(lambda: run_action("Knoten Oben"))

    if button_unten:
        button_unten.clicked.connect(lambda: run_action("Knoten Unten"))

    if button_save_close:
        def save():
            parent = dialog.parent()
            while parent and not isinstance(parent, QDialog):
                parent = parent.parent()
            if parent:
                parent.accept()
        button_save_close.clicked.connect(save)

    if button_cancel_close:
        def cancel():
            parent = dialog.parent()
            while parent and not isinstance(parent, QDialog):
                parent = parent.parent()
            if parent:
                parent.reject()
        button_cancel_close.clicked.connect(cancel)

    # -----------------------------
    # LINE EDIT UPDATE
    # -----------------------------
    def update_line_edit():
        laenge = laenge_widget.text() if laenge_widget else ""
        nennweite = nennweite_widget.text() if nennweite_widget else ""
        material = material_widget.currentText() if material_widget else ""
        gefaelle = haltungsgefaelle_widget.text() if haltungsgefaelle_widget else ""

        if line_edit:
            line_edit.setText(f"{laenge}m {gefaelle}‰ {material} DN {nennweite}")

    if laenge_widget:
        laenge_widget.textChanged.connect(update_line_edit)

    if nennweite_widget:
        nennweite_widget.textChanged.connect(update_line_edit)

    if haltungsgefaelle_widget:
        haltungsgefaelle_widget.textChanged.connect(update_line_edit)

    if material_widget:
        material_widget.currentIndexChanged.connect(update_line_edit)

    update_line_edit()

    # -----------------------------
    # FINAL TIMER
    # -----------------------------
    print(f"[FORM INIT TIME]: {time.perf_counter() - form_start:.4f}s")