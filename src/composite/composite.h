#ifndef COMPOSITE_H
#define COMPOSITE_H

#include <algorithm>

class Creature {
  int strength, agility, intelligence;

 public:
  int get_strength() const { return strength; }

  void set_strength(int strength) { Creature::strength = strength; }

  int get_agility() const { return agility; }

  void set_agility(int agility) { Creature::agility = agility; }

  int get_intelligence() const { return intelligence; }

  void set_intelligence(int intelligence) {
    Creature::intelligence = intelligence;
  }

  int sum() const { return strength + agility + intelligence; }

  double average() const { return sum() / 3.0; }

  int max() const {
    return std::max(std::max(strength, agility), intelligence);
  }
};

#endif