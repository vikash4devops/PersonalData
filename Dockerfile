FROM httpd
RUN apt-get update
RUN apt-get install wget -y
RUN apt-get install unzip -y
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page265/shree.zip
RUN unzip shree.zip
RUN mv  /usr/local/apache2/shree/* /usr/local/apache2/htdocs/
CMD httpd -D FOREGROUND
