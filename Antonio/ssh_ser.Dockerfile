FROM debian:latest

RUN apt update
RUN apt install -y ssh
RUN mkdir /run/sshd

CMD /usr/sbin/sshd -D
