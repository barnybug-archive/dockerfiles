#!/bin/sh

sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

/usr/sbin/mysqld &

echo 'Waiting for mysqld to startup...'
while ! mysqladmin ping 2>/dev/null; do sleep 1; done

echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY 'root' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql

echo 'Shutting down mysqld...'
mysqladmin shutdown
while pidof mysqld; do sleep 1; done
