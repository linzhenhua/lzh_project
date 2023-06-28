#include "optional_test.h"

#include <iostream>
#include <string>
#include <map>

using namespace std;

void optional_test() {
  //Optional<string> a("ok");
  //Optional<string> b("ok");
  //Optional<string> c("aa");
  //c = a;
  //if (c < a)
  //  cout << "<" << endl;

  //if (a == b)
  //  cout << "=" << endl;

  //map<Optional<string>, int> mymap;
  //mymap.insert(std::make_pair(a, 1));
  //mymap.insert(std::make_pair(c, 2));

  //auto it = mymap.find(a);
  //cout << it->second << endl;

  //Optional<int&> a = Optional<int&>();   // error
  //Optional<int> a = Optional<int>();

   const int a = 1024;
  auto* copy_msg = makeMessage(a);
}