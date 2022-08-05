FROM centos:7.9.2009
MAINTAINER raghwanitika14@gmail.com
RUN yum install -y httpd \
 zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/traveler.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip traveler.zip
RUN cp -rvf markups-traveler/* .
RUN rm -rf _MACOSX markups-traveler traveler.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
