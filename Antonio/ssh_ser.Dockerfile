FROM debian:latest

RUN apt update
RUN apt install -y ssh
RUN mkdir /run/sshd
RUN ssh-keygen -A

CMD /usr/sbin/sshd -D -e
