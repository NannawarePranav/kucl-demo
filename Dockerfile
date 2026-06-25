FROM ubuntu
RUN apt update && apt install apache2 figlet -y
RUN figlet "WELCOM KUCL 2.3" > /var/www/html/index.html && EXPOSE 80
CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]
