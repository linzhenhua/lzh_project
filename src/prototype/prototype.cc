
#include "prototype.h"

void prototype_test() {
  Contact worker{"", Address{"123 East Dr", "London", 0}};
  
  Contact john = worker;
  john.name = "john Doe";
  john.address.suite = 10;
}