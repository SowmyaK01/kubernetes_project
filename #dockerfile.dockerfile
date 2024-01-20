#dockerfile
FROM centos:latest
MAINTAINER cloud.sowmya@gmail.com
RUN yum install httpd -y \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html
WORKDIR /var/www/html
RUN unzip Photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic Photogenic.zip
CMD ["usr/sbin/httpd", "-D", "FOREHEAD"]
EXPOSE 80 22