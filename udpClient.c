#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <unistd.h>
#include <arpa/inet.h>

int main()
{
  //创建socket对象
  int sockfd = socket(AF_INET, SOCK_DGRAM, 0);
  //创建网络通信对象
  struct sockaddr_in addr;
  addr.sin_family = AF_INET;
  addr.sin_port = htons(1324);
  addr.sin_addr.s_addr = inet_addr("127.0.0.1");
  char str[7] = "fuck";
  char buffer;
  sendto(sockfd, str, sizeof(str), 0, (struct sockaddr *)&addr, sizeof(addr));
  socklen_t len = sizeof(addr);
  recvfrom(sockfd, &buffer, sizeof(buffer), 0, (struct sockaddr *)&addr, &len);
  printf("%hhd", buffer);
  close(sockfd);
}