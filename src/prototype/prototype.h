#ifndef PROTOTYPE_H
#define PROTOTYPE_H

#include <string>

struct Address {
  std::string street, city;
  int suite;
};

struct Contact {
  std::string name;
  Address address;
};

template<typename T>
struct Cloneable {
  virtual T clone() const = 0;
};

void prototype_test();

#endif  // !PROTOTYPE_H
