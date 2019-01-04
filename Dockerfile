FROM centos:7

USER root

RUN yum install httpd -y

RUN echo "Welcome to Demo" > /var/www/html/index.html

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80
