FROM centos:6
RUN rpm -i http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm; yum -y update; \
 yum install -y httpd php-common php gd gd-devel php-mcrypt php-xml php-devel php-imap php-soap php-mbstring php-mysql php-mhash php-simplexml php-dom php-gd php-pear php-magickwand httpd-devel gcc curl php-curl mod_ssl pcre-devel mysql mysql-server php-mysql php-pdo php-cli php-pecl-ssh2 php-pecl-xdebug php-pecl-imagick; \
 sed -i 's/AllowOverride None/AllowOverride All/' /etc/httpd/conf/httpd.conf; yum clean all
VOLUME /var/www/html

CMD /usr/sbin/apachectl -D FOREGROUND
