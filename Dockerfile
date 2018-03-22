FROM httpd:2.4.32

MAINTAINER Sinan Goo 

RUN apt-get update \
  && apt-get install -y --no-install-recommends libapache2-mod-jk \
  && rm -r /var/lib/apt/lists/*

RUN echo "" >> /usr/local/apache2/conf/httpd.conf
RUN echo "Include /etc/apache2/mods-available/jk.load" >> /usr/local/apache2/conf/httpd.conf
RUN echo "Include /etc/apache2/mods-available/jk.conf" >> /usr/local/apache2/conf/httpd.conf

RUN mkdir -p /var/log/apache2

