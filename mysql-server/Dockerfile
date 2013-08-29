# MySQL Server
# docker pull barnybug/mysql-server
# taken from: https://github.com/kstaken/dockerfile-examples/tree/master/mysql-server
#
# VERSION               0.0.1
FROM ubuntu:12.04
MAINTAINER Barnaby Gray <barnaby@pickle.me.uk>

# install mysql-server
RUN apt-get install -y mysql-server-5.5
# post installation fixes
ADD ./mysql-setup.sh /tmp/mysql-setup.sh
RUN sh /tmp/mysql-setup.sh

CMD ["/usr/sbin/mysqld"]
