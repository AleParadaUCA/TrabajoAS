FROM debian:latest

RUN apt-get update && \
    apt-get install -y openssh-server && \
    mkdir /var/run/sshd

RUN useradd -m -s /bin/bash docker && \
    mkdir -p /home/docker/.ssh && \
    chmod 700 /home/docker/.ssh

CMD ["/usr/sbin/sshd", "-D"]
