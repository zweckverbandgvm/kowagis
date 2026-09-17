from qgis.core import *
from qgis.gui import *
import time

# global cache (KEYED BY layer + extent)
_visible_ids_cache = {}


def cache_key(layername, extent):
    return (
        layername,
        round(extent.xMinimum(), 2),
        round(extent.yMinimum(), 2),
        round(extent.xMaximum(), 2),
        round(extent.yMaximum(), 2)
    )


def build_visible_cache(layername, extent):

    start_time = time.perf_counter()

    key = cache_key(layername, extent)

    ids = set()

    layers = QgsProject.instance().mapLayersByName(layername)
    root = QgsProject.instance().layerTreeRoot()

    for layer in layers:

        node = root.findLayer(layer.id())

        if not node or not node.isVisible():
            continue

        request = (
            QgsFeatureRequest()
            .setFilterRect(extent)
            .setSubsetOfAttributes(['id'], layer.fields())
            .setFlags(QgsFeatureRequest.NoGeometry)
        )

        for f in layer.getFeatures(request):
            ids.add(f["id"])

    _visible_ids_cache[key] = ids

    #print(
    #    f"Cache built for extent: {len(ids)} IDs in "
    #    f"{time.perf_counter() - start_time:.3f}s"
    #)


def check_cached(layername, objekt_id):

    canvas = iface.mapCanvas()
    extent = canvas.extent()

    key = cache_key(layername, extent)

    if key not in _visible_ids_cache:
        build_visible_cache(layername, extent)

    return 1 if objekt_id in _visible_ids_cache[key] else 0


@qgsfunction(group='Custom', referenced_columns=[])
def sichtbar(objekt_id, layer_str, feature, parent):

    start_time = time.perf_counter()

    layername = layer_str[7:30].capitalize()

    if layername == 'Sonstige_anlage':
        layername = 'sonstige_Anlage'

    layers = QgsProject.instance().mapLayersByName(layername)

    if not layers:
        return 0

    root = QgsProject.instance().layerTreeRoot()

    # check if ANY layer is visible
    visible = False

    for layer in layers:
        node = root.findLayer(layer.id())

        if node and node.isVisible():
            visible = True
            break

    # stop immediately if invisible
    if not visible:
        return 0

    result = check_cached(layername, objekt_id)

    runtime = time.perf_counter() - start_time

    return result


@qgsfunction(group='Custom', referenced_columns=[])
def sichtbar_haltung(objekt_id, feature, parent):

    start_time = time.perf_counter()

    result = check_cached('Haltung', objekt_id)

    runtime = time.perf_counter() - start_time

    ##print(
    ##    f"sichtbar_haltung('{objekt_id}') "
    ##    f"runtime: {runtime:.6f} seconds"
    ##)

    return result


def sichtbar_clear_cache():
    global _visible_ids_cache
    _visible_ids_cache = {}
    #print("sichtbar cache cleared")

def debug_cache(layername):
    canvas = iface.mapCanvas()
    extent = canvas.extent()

    key = cache_key(layername, extent)

    print("\n--- CACHE DEBUG ---")
    print("Layer:", layername)
    print("Extent:", extent.toString())
    print("Key:", key)

    if key not in _visible_ids_cache:
        print("❌ CACHE MISS (not built yet)")
        return

    cache = _visible_ids_cache[key]

    print("✅ CACHE HIT")
    print("Count:", len(cache))
    print("Sample values:", list(cache)[:10])