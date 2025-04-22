FROM debian:latest

RUN apt update
RUN apt install -y ssh libpam-google-authenticator
RUN mkdir /run/sshd
RUN ssh-keygen -A

CMD /usr/sbin/sshd -D -e
