#include <iostream>
#include "builder.h"

using namespace Builder_version4;

void builder_test() {
  std::shared_ptr<Builder> builderObj = std::make_shared<FatManBuilder>();
  Director directorObj(builderObj);
  directorObj.CreateMan();
  std::shared_ptr<Man> manObj = builderObj->GetMan();
  if (manObj == NULL) {
    return;
  }
  manObj->ShowMan();

  auto p = Point::Factory.NewCartesian(1, 2);
}