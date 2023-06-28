#ifndef BUILDER
#define BUILDER

#include <memory>
#include <string>
#include <vector>
#include <iostream>
#include <cmath>

namespace Builder_version1 {
struct HtmlElement {
  std::string name;
  std::string text;
  std::vector<HtmlElement> elements;

  HtmlElement() {}
  HtmlElement(const std::string& name, const std::string& text)
      : name(name), text(text) {}

  std::string str(int index = 0) {
    // pretty-print the contents
  }
};

struct HtmlBuilder {
  HtmlElement root;

  HtmlBuilder(std::string root_name) { root.name = root_name; }

  // void add_child(std::string child_name, std::string child_text) {
  //  HtmlElement e{child_name, child_text};
  //  root.elements.emplace_back(e);
  //}

  HtmlBuilder& add_child(std::string child_name, std::string child_text) {
    HtmlElement e{child_name, child_text};
    root.elements.emplace_back(e);
    return *this;
  }

  std::string str() { return root.str(); }
};
}  // namespace Builder_version1

namespace Builder_version2 {
struct HtmlElement {
  std::string name;
  std::string text;
  std::vector<HtmlElement> elements;

  HtmlElement() {}
  HtmlElement(const std::string& name, const std::string& text)
      : name(name), text(text) {}

  std::string str(int index = 0) {
    // pretty-print the contents
  }
};

struct HtmlBuilder {
  HtmlElement root;

  HtmlBuilder(std::string root_name) { root.name = root_name; }

  // void add_child(std::string child_name, std::string child_text) {
  //  HtmlElement e{child_name, child_text};
  //  root.elements.emplace_back(e);
  //}

  HtmlBuilder& add_child(std::string child_name, std::string child_text) {
    HtmlElement e{child_name, child_text};
    root.elements.emplace_back(e);
    return *this;
  }

  std::string str() { return root.str(); }
};
}  // namespace Builder_version2

namespace Builder_version3 {
struct HtmlBuilder;
struct HtmlElement {
  std::string name;
  std::string text;
  std::vector<HtmlElement> elements;
  const size_t indent_size = 2;
  static std::unique_ptr<HtmlBuilder> build(std::string root_name) {
    return std::make_unique<HtmlBuilder>(root_name);
  }

  HtmlElement() {}
  HtmlElement(const std::string& name, const std::string& text)
      : name{name}, text{text} {}
};

struct HtmlBuilder {
  HtmlElement root;

  HtmlBuilder(std::string root_name) { root.name = root_name; }

  // void add_child(std::string child_name, std::string child_text) {
  //  HtmlElement e{child_name, child_text};
  //  root.elements.emplace_back(e);
  //}

  HtmlBuilder& add_child(std::string child_name, std::string child_text) {
    HtmlElement e{child_name, child_text};
    root.elements.emplace_back(e);
    return *this;
  }

  // std::string str() { return root.str(); }
};
}  // namespace Builder_version3

namespace Builder_version4 {

typedef enum class MANTYPETag { kFatMan, kThinMan, kNormal } MANTYPE;

// Man
class Man {
 public:
  void setHead(MANTYPE type) { m_Type = type; }
  void setBody(MANTYPE type) { m_Type = type; }
  void SetLeftHand(MANTYPE type) { m_Type = type; }
  void SetRightHand(MANTYPE type) { m_Type = type; }
  void SetLeftFoot(MANTYPE type) { m_Type = type; }
  void SetRightFoot(MANTYPE type) { m_Type = type; }

  void ShowMan() {
    switch (m_Type) {
      case MANTYPETag::kFatMan:
        std::cout << "I'm a fat man" << std::endl;
        break;
      case MANTYPETag::kThinMan:
        std::cout << "I'm a thin man" << std::endl;
        break;
      case MANTYPETag::kNormal:
        std::cout << "I'm a normal man" << std::endl;
        break;
      default:
        std::cout << "nothing to be done" << std::endl;
        break;
    }
  }

 private:
  MANTYPE m_Type;
};

// Builder
class Builder {
 public:
  virtual void BuildHead() {}
  virtual void BuildBody() {}
  virtual void BuildLeftHand() {}
  virtual void BuildRightHand() {}
  virtual void BuildLeftFoot() {}
  virtual void BuildRightFoot() {}
  virtual std::shared_ptr<Man> GetMan() { return nullptr; }
};

// FatManBuilder
class FatManBuilder : public Builder {
 public:
  FatManBuilder() { m_FatMan = std::make_unique<Man>(); }
  void BuildHead() { m_FatMan->setHead(MANTYPETag::kFatMan); }
  void BuildBody() { m_FatMan->setBody(MANTYPETag::kFatMan); }
  void BuildLeftHand() { m_FatMan->SetLeftHand(MANTYPETag::kFatMan); }
  void BuildRightHand() { m_FatMan->SetRightHand(MANTYPETag::kFatMan); }
  void BuildLeftFoot() { m_FatMan->SetLeftFoot(MANTYPETag::kFatMan); }
  void BuildRightFoot() { m_FatMan->SetRightFoot(MANTYPETag::kFatMan); }
  std::shared_ptr<Man> GetMan() { return m_FatMan; }

 private:
  std::shared_ptr<Man> m_FatMan;
};

// ThinManBuilder
class ThinManBuilder : public Builder {
 public:
  ThinManBuilder() { m_ThinMan = std::make_unique<Man>(); }
  void BuildHead() { m_ThinMan->setHead(MANTYPETag::kThinMan); }
  void BuildBody() { m_ThinMan->setBody(MANTYPETag::kThinMan); }
  void BuildLeftHand() { m_ThinMan->SetLeftHand(MANTYPETag::kThinMan); }
  void BuildRightHand() { m_ThinMan->SetRightHand(MANTYPETag::kThinMan); }
  void BuildLeftFoot() { m_ThinMan->SetLeftFoot(MANTYPETag::kThinMan); }
  void BuildRightFoot() { m_ThinMan->SetRightFoot(MANTYPETag::kThinMan); }
  std::shared_ptr<Man> GetMan() { return m_ThinMan; }

 private:
  std::shared_ptr<Man> m_ThinMan;
};

// Director
class Director {
 public:
  Director(std::shared_ptr<Builder> builder) { m_Builder = builder; }
  void CreateMan() {
    m_Builder->BuildHead();
    m_Builder->BuildBody();
    m_Builder->BuildLeftHand();
    m_Builder->BuildRightHand();
    m_Builder->BuildLeftHand();
    m_Builder->BuildRightHand();
  }

 private:
  std::shared_ptr<Builder> m_Builder;
};
}  // namespace Builder_version4

struct Point {
 private:
  Point(double x, double y) : x(x), y(y) {}

  struct PointFactory {
    static Point NewCartesian(double x, double y) { return Point{x, y}; }
    static Point NewPolar(double r, double theta) {
      return Point { r *cos(theta), r *sin(theta) };
    }
  };

 public:
  double x, y;
  static PointFactory Factory;
};

void builder_test();

#endif  // !BUILDER
