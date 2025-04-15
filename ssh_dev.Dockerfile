FROM debian:latest

RUN apt update
RUN apt install -y ssh libpam-google-authenticator
RUN mkdir /run/sshd

CMD /usr/sbin/sshd -D
