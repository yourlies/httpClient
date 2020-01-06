#ifdef __WIN32__
#include <ws2tcpip.h>
#include <winsock2.h>
#else
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#endif
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define IPSTR "127.0.0.1"
#define PORT 8080
#define BUFSIZE 1024

int main(void)
{
  int ret, i, h;
  struct sockaddr_in servaddr;
  fd_set t_set1;
  socklen_t len;
  char str[4096], buf[BUFSIZE];
  // 创建套接字
  int sockfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
  // 设置请求地址信息
  memset(&servaddr, 0, sizeof(servaddr));
  servaddr.sin_family = AF_INET;
  servaddr.sin_port = htons(PORT);
  servaddr.sin_addr.s_addr = inet_addr(IPSTR);
  // 创建连接
  connect(sockfd, (struct sockaddr *)&servaddr, sizeof(servaddr));
  // 设置请求报文
  memset(str, 0, 4096);
  strcat(str, "GET /index.html?username=tom&password=111111 HTTP/1.1\n");
  strcat(str, "Host: 127.0.0.1\n");
  strcat(str, "Content-Type: text/html\n");
  strcat(str, "\n\n");
  strcat(str, "\r\n\r\n");
  printf("%s\n", str);
  // 接受响应报文
  ret = send(sockfd, str, strlen(str), 0);
  FD_ZERO(&t_set1);
  FD_SET(sockfd, &t_set1);
  memset(buf, 0, sizeof(buf));
  recv(sockfd, buf, 4095, 0);
  printf("%s\n", buf);
  close(sockfd);
  return 0;
}