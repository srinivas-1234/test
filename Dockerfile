FROM httpd
#RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page251/flame.zip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page251/flame.zip /tmp/flame.zip
RUN apt-get update && apt-get install unzip -y
RUN unzip /tmp/flame.zip
RUN cd /tmp/
RUN cp -r flameonepage/* /usr/local/apache2/htdocs/
RUN rm -fr /tmp/flame.zip /tmp/flameonepage
