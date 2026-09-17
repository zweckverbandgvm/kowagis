from qgis.core import QgsRectangle
from qgis.utils import iface
from qgis.PyQt.QtCore import QElapsedTimer, QEventLoop

# -----------------------------
# SETTINGS
# -----------------------------

# Initial zoom-in extent
xmin = 249122
ymin = 5975297
xmax = 249241
ymax = 5975369

# Move right per run
x_offset_per_run = 100

# Zoom-out extent
reset_xmin = 246047
reset_ymin = 5973538
reset_xmax = 254201
reset_ymax = 5976242

# Number of benchmark runs
runs = 5

# -----------------------------
# SETUP
# -----------------------------

canvas = iface.mapCanvas()

zoom_out_rect = QgsRectangle(
    reset_xmin,
    reset_ymin,
    reset_xmax,
    reset_ymax
)

times = []

# -----------------------------
# HELPER FUNCTION
# -----------------------------

def render_extent(rect):

    loop = QEventLoop()

    def rendering_finished(*args):
        loop.quit()

    canvas.renderComplete.connect(rendering_finished)

    timer = QElapsedTimer()
    timer.start()

    canvas.setExtent(rect)
    canvas.refresh()

    loop.exec()

    elapsed = timer.elapsed()

    try:
        canvas.renderComplete.disconnect(rendering_finished)
    except:
        pass

    return elapsed

# -----------------------------
# BENCHMARK
# -----------------------------

for i in range(runs):

    print(f"\n===== RUN {i+1} =====")

    # Move zoom area to the right
    offset = i * x_offset_per_run

    zoom_in_rect = QgsRectangle(
        xmin + offset,
        ymin,
        xmax + offset,
        ymax
    )

    #print("Zoom extent:", zoom_in_rect.toString())

    # 1. Zoom OUT
    out_time = render_extent(zoom_out_rect)
    print(f"Zoom OUT: {out_time} ms")

    # 2. Zoom IN
    in_time = render_extent(zoom_in_rect)
    print(f"Zoom IN: {in_time} ms")

    times.append(in_time)

# -----------------------------
# RESULTS
# -----------------------------

avg = sum(times) / len(times)

print("\n========== RESULTS ==========")
print("Runs:", runs)
print("Min:", min(times), "ms")
print("Max:", max(times), "ms")
print("Average:", round(avg, 2), "ms")
print("=============================")