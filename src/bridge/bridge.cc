#include "bridge.h"

void bridge_test() {
  RasterRenderer rr;
  Circle raster_circle{rr, 5, 5, 5};
  raster_circle.draw();
  raster_circle.resize(2);
  raster_circle.draw();
}