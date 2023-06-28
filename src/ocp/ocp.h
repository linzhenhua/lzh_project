#ifndef OCP_H
#define OCP_H

#include <memory>
#include <string>
#include <vector>

// Open-Closed Principle

enum class Color { Red, Green, Blue };
enum class Size { Small, Medium, Large };

struct Product {
  std::string name;
  Color color;
  Size size;
};

struct ProductFilter {
  typedef std::vector<std::shared_ptr<Product>> Items;

  Items by_color(Items items, Color color) {
    Items result;
    for (auto& i : items)
      if (i->color == color)
        result.push_back(i);
    return result;
  }

  Items by_size(Items items, Size size) {
    Items result;
    for (auto& i : items)
      if (i->size == size)
        result.push_back(i);
    return result;
  }

  Items by_color_and_size(Items items, Size size, Color color) {
    Items result;
    for (auto& i : items)
      if (i->size == size && i->color == color)
        result.push_back(i);
    return result;
  }
};

template <typename T>
struct Specification {
  virtual bool is_satisfied(std::shared_ptr<T> item) = 0;
};

template <typename T>
struct Filter {
  virtual std::vector<std::shared_ptr<T>> filter(
      std::vector<std::shared_ptr<T>> item,
      Specification<T>& spec) = 0;
};

struct BetterFilter : Filter<Product> {
  std::vector<std::shared_ptr<Product>> filter(
      std::vector<std::shared_ptr<Product>> items,
      Specification<Product>& spec) override {
    std::vector<std::shared_ptr<Product>> result;
    for (auto& p : items) {
      if (spec.is_satisfied(p)) {
        result.push_back(p);
      }
    }
    return result;
  }
};

struct ColorSpecification : Specification<Product> {
  Color color;

  explicit ColorSpecification(const Color color) : color{color} {}

  bool is_satisfied(std::shared_ptr<Product> item) override {
    return item->color == color;
  }
};

void ocp_test();

#endif  // !OCP_H
