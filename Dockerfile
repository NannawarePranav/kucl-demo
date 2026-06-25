FROM ubuntu
RUN apt update && apt install apache2 -y
RUN echo "WELCOM KUCL 2.3" > /var/www/html/index.html && EXPOSE 80
CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]
