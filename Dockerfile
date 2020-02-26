FROM httpd
ADD https://www.free-css.com/assets/files/free-css-templates/download/page251/zonebiz.zip /tmp/zonebiz.zip
RUN apt-get update && apt-get install unzip -y
RUN unzip /tmp/zonebiz.zip
RUN cd /tmp/
RUN cp -r zonebiz/* /usr/local/apache2/htdocs/
