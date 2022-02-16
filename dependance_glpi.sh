


sudo mysql -u root -p -e '
CREATE DATABASE IF NOT EXISTS glpitest;

CREATE  USER IF NOT EXISTS tester@localhost identified by "1234";

grant all on glpitest.* to tester@localhost;

flush privileges;'


sudo apt-get install apache2 php php-mysql libapache2-mod-php php-curl php-gd php-imagick php-intl php-apcu php-memcache php-imap php-mysql \
    php-cas php-ldap php-tidy php-pear php-xmlrpc php-pspell php-mbstring php-json php-common php-bz2 php-xml php-gd php-zip -y


sudo a2enmod rewrite && sudo systemctl apache2 restart
