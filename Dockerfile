from ubuntu:16.04
MAINTAINER Wilmer wilmer@gmail.com
RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get -y install wget
RUN apt-get -y install unzip
RUN apt-get -y upgrade
RUN apt-get -y install drush
RUN apt-get -y install git
RUN apt-get -y install python-software-properties
RUN apt-get -y install mariadb-server
CMD systemctl start mariadb
CMD systemctl enable mariadb
CMD add-apt-repository ppa:ondrej/php
RUN apt-get -y update
RUN apt-get -y install php7.0 php7.0-curl php7.0-gd php7.0-mbstring php7.0-xml php7.0-json php7.0-mysql php7.0-opcache libapache2-mod-php7.0
CMD mysql_secure_installation
CMD mysql -u root -p
CMD GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY 'smartcity';
RUN wget https://ftp.drupal.org/files/projects/drupal-8.3.7.tar.gz
RUN tar xvzf drupal-8.3.7.tar.gz
RUN wget https://github.com/BlackrockDigital/startbootstrap-freelancer/archive/gh-pages.zip
RUN unzip gh-pages.zip
RUN cp -a /startboostrap-freelancer-gh-pages/* var/www/html
EXPOSE 82
CMD /usr/sbin/opendata -D FOREGROUND

