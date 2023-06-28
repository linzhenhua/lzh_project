#include "pointer.h"

#include <cstdio>
#include <cstdlib>
#include <cstring>

static void Str2Hex(const char* sSrc, char* sDest, int nSrcLen) {
  int i;
  char szTmp[3];

  for (i = 0; i < nSrcLen; i++) {
    sprintf(szTmp, "%02X", (unsigned char)sSrc[i]);
    memcpy(&sDest[i * 2], szTmp, 2);
  }
  return;
}

void pointer_test() {
  //{
  //  ada_5gc_mesg_header_t* h;

  //  char* p = (char*)malloc(sizeof(ada_5gc_mesg_header_t));

  //  h = (ada_5gc_mesg_header_t*)p;
  //  h->NeType = 97;
  //  h->NeID = 97;
  //  h->MessageType = 97;

  //  printf("%s\n", p);  // print cba
  //  printf("%c\n", h->NeType);

  //  char arr[100] = {'\0'};
  //  Str2Hex(p, arr, sizeof(ada_5gc_mesg_header_t));
  //  printf("%s", arr);

  //  free(p);
  //  p = NULL;
  //}

  //{
  //  int count = 4;
  //  char countBuff;
  //  memset(&countBuff, 0, 1);
  //  memcpy(&countBuff, &count, sizeof(count));

  //  int recvCount;
  //  memcpy(&recvCount, &countBuff, sizeof(recvCount));

  //  printf("%d", recvCount);
  //}

  {
    char hostname[64] = {'\0'};
    strcpy(hostname, "127.0.0.6");
    sprintf(hostname + strlen("127.0.0.6"), "%d", 1);
    printf("hostname: %s\n", hostname);
  }
}