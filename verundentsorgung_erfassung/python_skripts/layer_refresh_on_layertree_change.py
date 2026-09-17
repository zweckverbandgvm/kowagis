from qgis.core import QgsProject
from qgis.utils import iface

def test_p(node):
    iface.mapCanvas().refreshAllLayers()

root = QgsProject.instance().layerTreeRoot()
root.visibilityChanged.connect(test_p)
