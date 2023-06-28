#include <cstdint>
#ifndef POINTER_H
#define POINTER_H

#include <cstdint>

typedef struct ada_5gc_msg_header {
  char NeType;
  char NeID;
  char MessageType;
} ada_5gc_mesg_header_t;

void pointer_test();

#endif  // !POINTER_H
