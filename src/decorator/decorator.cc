#include "decorator.h"

#include <iostream>
#include <memory>

//using namespace SHAPE;
//using namespace SHAPE1;

static void delchar(char* str, char c) {
  int i, j;
  for (i = j = 0; str[i] != '\0'; i++) {
    if (str[i] != c) {
      str[j++] = str[i];
    }
  }
  str[j] = '\0';
}

void decorator_test() {
  SHAPE::Circle circle{0.5f};
  SHAPE::ColoredShape redCircle{circle, "red"};

  std::cout << redCircle.str() << "\n";

  SHAPE::TransparentShape myCircle{SHAPE::ColoredShape{SHAPE::Circle{23}, "green"}, 64};

  std::cout << myCircle.str() << "\n";

  //SHAPE1::ColoredShape<SHAPE::TransparentShape> square(
  //    SHAPE::ColoredShape{SHAPE::Circle{23}, "green"}, 64);

  //std::cout << square.str() << std::endl;

    SHAPE1::ColoredShape square(SHAPE::ColoredShape{SHAPE::Circle{23}, "green"}, 64);

  std::cout << square.str() << std::endl;

  SHAPE1::Son son(std::string("lin"));
  son.print();

  char buffer[10] = "26%";
  //char space_buffer[10] = {'\0'};
  int space;

  //sscanf(buffer, "%[0-9]", space_buffer);
  delchar(buffer, '%');
  std::cout << buffer << std::endl;
  sscanf(buffer, "%d", &space);
  std::cout << space << std::endl;
}

template<class T>
void run(T&& runnable) {
  runnable();
}

void move_test() {
  auto result = std::make_unique<int>(42);

  // run([&result]() { std::cout << *result << std::endl; });

  run([result = std::move(result)]() {
    std::cout << *result << std::endl;
  });
}