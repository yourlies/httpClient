#include <stdio.h>
#ifdef __WIN32__
#include <ws2tcpip.h>
#include <winsock2.h>
#else
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#endif
#include <sys/types.h>
#include <errno.h>
#include <signal.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/time.h>

#include "lib/socket.h"

#define IPSTR "127.0.0.1"
#define PORT 8080
#define BUFSIZE 1024
SOCKET sockfd;
WSADATA wsd;

int main(int argc, char **argv)
{
  int ret, i, h;
  struct sockaddr_in servaddr;
  char str1[4096], str2[4096], buf[BUFSIZE], *str;
  socklen_t len;
  fd_set t_set1;
  struct timeval tv;

  //创建套接字
  if (WSAStartup(MAKEWORD(2, 2), &wsd) != 0)
  {
    printf("WSA start up failed!\n");
    return 1;
  }
  sockfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
  if (sockfd == INVALID_SOCKET)
  {
    printf("Socket invalid!\n");
    return 2;
  }

  memset(&servaddr, 0, sizeof(servaddr));
  servaddr.sin_family = AF_INET;
  servaddr.sin_port = htons(PORT);
  servaddr.sin_addr.s_addr = inet_addr(IPSTR);
  if (servaddr.sin_addr.s_addr <= 0)
  {
    printf("创建网络连接失败,本线程即将终止--inet_pton error!\n");
    exit(0);
  };

  if (connect(sockfd, (struct sockaddr *)&servaddr, sizeof(servaddr)) == SOCKET_ERROR)
  {
    printf("%s", "test");
  }

  printf("与远端建立了连接\n");
  memset(str2, 0, 4096);
  strcat(str2, "?username=tom&password=111111");
  str = (char *)malloc(128);
  len = strlen(str2);
  sprintf(str, "%d", len);

  memset(str1, 0, 4096);
  strcat(str1, "GET /index.html?username=tom&password=111111 HTTP/1.1\n");
  strcat(str1, "Host: 127.0.0.1\n");
  strcat(str1, "Content-Type: text/html\n");
  strcat(str1, "Content-Length: ");
  strcat(str1, str);
  strcat(str1, "\n\n");

  strcat(str1, "\r\n\r\n");
  printf("%s\n", str1);
  ret = send(sockfd, str1, strlen(str1), 0);

  FD_ZERO(&t_set1);
  FD_SET(sockfd, &t_set1);

  memset(buf, 0, sizeof(buf));
  recv(sockfd, buf, 4095, 0);
  printf("%s\n", buf);
  close(sockfd);

  return 0;
}