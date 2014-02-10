#!/bin/bash -ex

useradd mysql
chmod 700 /etc/mysql/my.cnf
mkdir -p /etc/mysql/conf.d /var/run/mysqld

/usr/bin/mysql_install_db --force
chown mysql:mysql /var/lib/mysql /var/run/mysqld

/usr/sbin/mysqld &

echo 'Waiting for mysqld to startup...'
while ! mysql -e '' 2>/dev/null; do sleep 1; done

echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY 'root' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql

echo 'Shutting down mysqld...'
kill `pidof mysqld`
while pidof mysqld; do sleep 1; done
