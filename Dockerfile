from ubuntu:16.04
MAINTAINER Wilmer wilmer@gmail.com
RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get -y install wget
RUN apt-get -y install unzip
RUN apt-get -y upgrade
RUN apt-get install -y php5-mysql php5 libapache2-mod-php5 php5-mcrypt php5-gd php5-curl libssh2-php php-ssh2:i386 php-ssh2
RUN apt-get installphp-ssh2:i386 php-ssh2
RUN apt-get install drush
RUN apt-get install git
RUN apt-get install python-software-properties
RUN apt-get install mariadb-server
RUN systemctl start mariadb
RUN systemctl enable mariadb
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN pt-get install php7.0 php7.0-curl php7.0-gd php7.0-mbstring php7.0-xml php7.0-json php7.0-mysql php7.0-opcache libapache2-mod-php7.0
RUN mysql_secure_installation
RUN mysql -u root -p
RUN GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY 'smartcity';
RUN mysql -u root
