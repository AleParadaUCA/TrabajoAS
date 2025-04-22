FROM debian:latest

RUN apt update
RUN apt install -y ssh libpam-google-authenticator
RUN mkdir /run/sshd
RUN ssh-keygen -A

RUN useradd -ms /bin/bash Usuario1
RUN echo "Usuario1:Usu123" | chpasswd

CMD /usr/sbin/sshd -D -e
