#include <stdio.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <errno.h>
#include <signal.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/time.h>
#include <netinet/in.h>
#include <arpa/inet.h>

#define IPSTR "127.0.0.1"
#define PORT 8080
#define BUFSIZE 1024

int main(int argc, char **argv)
{
  int sockfd, ret, i, h;
  struct sockaddr_in servaddr;
  char str1[4096], str2[4096], buf[BUFSIZE], *str;
  socklen_t len;
  fd_set t_set1;
  struct timeval tv;

  //创建套接字
  if ((sockfd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
  {
    printf("创建网络连接失败,本线程即将终止---socket error!\n");
    exit(0);
  };

  bzero(&servaddr, sizeof(servaddr));
  servaddr.sin_family = AF_INET;
  servaddr.sin_port = htons(PORT);
  if (inet_pton(AF_INET, IPSTR, &servaddr.sin_addr) <= 0)
  {
    printf("创建网络连接失败,本线程即将终止--inet_pton error!\n");
    exit(0);
  };

  if (connect(sockfd, (struct sockaddr *)&servaddr, sizeof(servaddr)) < 0)
  {
    printf("连接到服务器失败,connect error!\n");
    exit(0);
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

  ret = write(sockfd, str1, strlen(str1));
  if (ret < 0)
  {
    printf("发送失败！错误代码是%d，错误信息是'%s'\n", errno, strerror(errno));
    exit(0);
  }
  else
  {
    printf("消息发送成功，共发送了%d个字节！\n\n", ret);
  }

  FD_ZERO(&t_set1);
  FD_SET(sockfd, &t_set1);

  memset(buf, 0, sizeof(buf));
  read(sockfd, buf, 4095);
  printf("%s\n", buf);
  close(sockfd);

  return 0;
}