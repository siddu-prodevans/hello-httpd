FROM centos:7

USER root

RUN yum install httpd -y

RUN echo "Welcome to Httpd Demo from Jenkins" > /var/www/html/index.html

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80
