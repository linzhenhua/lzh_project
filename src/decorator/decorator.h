#ifndef DECORATOR_H
#define DECORATOR_H

#include <cstdint>
#include <sstream>
#include <string>
#include <type_traits>
#include <iostream>

namespace SHAPE {
struct Shape {
  virtual std::string str() const = 0;
};

struct Circle : public Shape {
  float radius;

  explicit Circle(const float radius) : radius{radius} {}

  void resize(float factor) { radius *= factor; }

  std::string str() const override {
    std::ostringstream oss;
    oss << "A circle of radius " << radius;
    return oss.str();
  }
};

struct ColoredShape : public Shape {
  const Shape& shape;
  std::string color;

  ColoredShape(const Shape& shape, const std::string& color)
      : shape{shape}, color{color} {}

  std::string str() const override {
    std::ostringstream oss;
    oss << shape.str() << " has the color " << color;
    return oss.str();
  }
};

struct TransparentShape : public Shape {
  const Shape& shape;
  uint8_t transparency;

  TransparentShape(const Shape& shape, const uint8_t transparency)
      : shape{shape}, transparency{transparency} {}

  std::string str() const override {
    std::ostringstream oss;
    oss << shape.str() << " has "
        << static_cast<float>(transparency) / 255.f * 100.f << "% transparency";

    return oss.str();
  }
};
}  // namespace SHAPE

namespace SHAPE1 {
// template <typename T>
struct ColoredShape : public SHAPE::TransparentShape {
  //static_assert(std::is_base_of<SHAPE::Shape, T>::value,
  //              "Template argument must be a Shape");
  std::string color;

  ColoredShape(const SHAPE::Shape& shape, const uint8_t transparency)
      : SHAPE::TransparentShape{shape, transparency} {
  }

  std::string str() const override {
    std::ostringstream oss;
    oss << SHAPE::TransparentShape::str() << "has the color" << color;
    return oss.str();
  }
};

struct Father {
  std::string str;
  Father(std::string rhs) : str{rhs} {}

  virtual void print() const = 0;
};

struct Son : public Father {
  Son(std::string rhs) : Father{rhs} {}
  void print() const override { std::cout << "sun is " << Father::str << std::endl;
  }
};

}  // namespace SHAPE1

void decorator_test();

#endif  // !DECORATOR_H
