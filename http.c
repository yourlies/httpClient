#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef __WIN32__
#include <ws2tcpip.h>
#include <winsock2.h>
#else
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#endif

#define IPSTR "127.0.0.1"
#define PORT 8080
#define BUFSIZE 1024

int main(void)
{
  int ret, i, h;
  struct sockaddr_in servaddr;
  fd_set t_set1;
  socklen_t len;
  char str1[4096], str2[4096], buf[BUFSIZE], *str;
  // 创建套接字
  int sockfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
  // 设置请求地址信息
  memset(&servaddr, 0, sizeof(servaddr));
  servaddr.sin_family = AF_INET;
  servaddr.sin_port = htons(PORT);
  servaddr.sin_addr.s_addr = inet_addr(IPSTR);
  // 创建连接
  connect(sockfd, (struct sockaddr *)&servaddr, sizeof(servaddr));
  // 设置请求参数
  memset(str2, 0, 4096);
  strcat(str2, "?username=tom&password=111111");
  str = (char *)malloc(128);
  len = strlen(str2);
  sprintf(str, "%d", len);
  // 设置http报文
  memset(str1, 0, 4096);
  strcat(str1, "GET /index.html?username=tom&password=111111 HTTP/1.1\n");
  strcat(str1, "Host: 127.0.0.1\n");
  strcat(str1, "Content-Type: text/html\n");
  strcat(str1, "Content-Length: ");
  strcat(str1, str);
  strcat(str1, "\n\n");
  strcat(str1, "\r\n\r\n");
  printf("%s\n", str1);
  // 接受响应报文
  ret = send(sockfd, str1, strlen(str1), 0);
  FD_ZERO(&t_set1);
  FD_SET(sockfd, &t_set1);
  memset(buf, 0, sizeof(buf));
  recv(sockfd, buf, 4095, 0);
  printf("%s\n", buf);
  close(sockfd);
  return 0;
}