#include "barbaraLiskov.h"

#include <iostream>

void process(Rectangle& r) {
  int w = r.get_width();

  std::cout << "w: " << w << std::endl;

  std::cout << "area: " << r.area() << std::endl;

  r.set_height(10);

  std::cout << "area: " << r.area() << std::endl;

  std::cout << "h: " << r.get_height() << std::endl;

  std::cout << r.get_height() * r.get_width() << std::endl;

  std::cout << "expected area = " << (w * 10) << ", got " << r.area()
            << std::endl;
}

void barbaraLiskov_test() {
  Square s{5};
  process(s);  // expected area = 50, got 25
}