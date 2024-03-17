#dockerfile
FROM centos:latest
MAINTAINER name cloud.sowmya@gmail.com
RUN rm -rf /var/cache/
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install httpd -y \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic Photogenic.zip
CMD ["usr/sbin/httpd", "-D", "FOREHEAD"]
EXPOSE 80 