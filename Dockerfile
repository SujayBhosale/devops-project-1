FROM ubuntu
RUN apt-get update -y 
RUN apt install -y apache2
COPY . /var/www/html
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
