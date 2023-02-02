# syntax=docker/dockerfile:1
FROM ubuntu:22.04

WORKDIR /

RUN apt update && apt install  openssh-server -y
RUN service ssh start

EXPOSE 22

COPY src/hello.txt /hello.txt
COPY ssh_test/id_rsa.pub /root/.ssh/authorized_keys

CMD ["/usr/sbin/sshd","-D"]