#include "ocp.h"

#include <iostream>

void ocp_test() {
  auto apple = std::make_shared<Product>("Apple", Color::Green, Size::Small);
  auto tree = std::make_shared<Product>("Tree", Color::Green, Size::Large);
  auto house = std::make_shared<Product>("House", Color::Blue, Size::Large);

  std::vector<std::shared_ptr<Product>> all{apple, tree, house};

  BetterFilter bf;
  ColorSpecification green(Color::Green);

  auto green_things = bf.filter(all, green);
  std::cout << green_things.size() << std::endl;
  for (auto& x : green_things) {
    std::cout << x->name << " is green" << std::endl;
  }
}