FROM debian:latest

RUN apt update
RUN apt install -y ssh
RUN mkdir /run/sshd
RUN ssh-keygen -A

RUN useradd -ms /bin/bash Usuario2
RUN usermod -p '*' Usuario2

CMD /usr/sbin/sshd -D -e
