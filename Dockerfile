FROM httpd:2.4.32

MAINTAINER Sinan Goo 

RUN apt-get update \
  && apt-get install -y --no-install-recommends libapache2-mod-jk \
  && rm -r /var/lib/apt/lists/*
# wget http://mirror.netcologne.de/apache.org/tomcat/tomcat-connectors/jk/tomcat-connectors-1.2.43-src.tar.gz


RUN echo "" >> /usr/local/apache2/conf/httpd.conf
RUN echo "Include /etc/apache2/mods-available/jk.load" >> /usr/local/apache2/conf/httpd.conf
RUN echo "Include /etc/apache2/mods-available/jk.conf" >> /usr/local/apache2/conf/httpd.conf

RUN mkdir -p /var/log/apache2

