#include <netdb.h>
#include <signal.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include <string>

#include "workflow/HttpMessage.h"
#include "workflow/HttpUtil.h"
#include "workflow/WFTaskFactory.h"
#include "workflow/WFFacilities.h"

#define REDIRECT_MAX 5
#define RETRY_MAX 2

void wget_callback(WFHttpTask *task) {
  protocol::HttpRequest *req = task->get_req();
  protocol::HttpResponse *resp = task->get_resp();
  int state = task->get_state();
  int error = task->get_error();

  switch (state) {
    case WFT_STATE_SYS_ERROR:
      fprintf(stderr, "system error: %s\n", strerror(error));
      break;
    case WFT_STATE_DNS_ERROR:
      fprintf(stderr, "DNS error: %s\n", gai_strerror(error));
      break;
    case WFT_STATE_SSL_ERROR:
      fprintf(stderr, "SSL error: %d\n", error);
      break;
    case WFT_STATE_TASK_ERROR:
      fprintf(stderr, "Task error: %d\n", error);
      break;
    case WFT_STATE_SUCCESS:
      break;
  }

  if (state != WFT_STATE_SUCCESS) {
    fprintf(stderr, "Failed. Press Ctrl-C to exit.\n");
    return;
  }

  std::string name;
  std::string value;

  /* Print request. */
  fprintf(stderr, "%s %s %s\r\n", req->get_method(), req->get_http_version(),
          req->get_request_uri());

  protocol::HttpHeaderCursor req_cursor(req);

  while (req_cursor.next(name, value))
    fprintf(stderr, "%s: %s\r\n", name.c_str(), value.c_str());
  fprintf(stderr, "\r\n");

  /* Print response header. */
  fprintf(stderr, "%s %s %s\r\n", resp->get_http_version(),
          resp->get_status_code(), resp->get_reason_phrase());

  protocol::HttpHeaderCursor resp_cursor(resp);

  while (resp_cursor.next(name, value))
    fprintf(stderr, "%s: %s\r\n", name.c_str(), value.c_str());
  fprintf(stderr, "\r\n");

  /* Print response body. */
  const void *body;
  size_t body_len;

  resp->get_parsed_body(&body, &body_len);
  fwrite(body, 1, body_len, stdout);
  fflush(stdout);

  fprintf(stderr, "\nSuccess. Press Ctrl-C to exit.\n");
}

static WFFacilities::WaitGroup wait_group(1);

void sig_handler(int signo) { wait_group.done(); }
