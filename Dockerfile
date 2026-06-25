FROM ubuntu

RUN apt update && apt install apache2 -y

RUN apt install figlet -y

RUN figlet "WELCOM KUCL 2.3" > index.html

RUN cp index.html /var/www/html

EXPOSE 80

CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]
