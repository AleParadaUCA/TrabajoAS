FROM debian:latest

ADD --chmod=644 P0/dailyjob /etc/cron.d/

RUN apt-get update 
RUN apt-get install -y rsync default-mysql-client postgresql-client cron
RUN crontab /etc/cron.d/dailyjob 

CMD cron -f
