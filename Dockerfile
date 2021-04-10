FROM ubuntu:20.10
RUN apt update
RUN apt install -y sudo nginx
COPY www /var/www/html
COPY install.sh /tmp
RUN chmod +x /tmp/install.sh
RUN /tmp/install.sh
RUN rabbitmq-plugins enable rabbitmq_web_stomp rabbitmq_management
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh