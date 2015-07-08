FROM centos:6
RUN rpm -i http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm; yum -y update; \
 yum install -y php php-mbstring php-mysql php-soap php-gd php-pdo php-imap php-xml php-cli php-pear;yum clean all
VOLUME /var/www/html

CMD /usr/sbin/apachectl -D FOREGROUND
