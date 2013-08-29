# MySQL Server
# docker pull barnybug/mysql
#
# VERSION               0.0.1
FROM ubuntu:12.04
MAINTAINER Barnaby Gray <barnaby@pickle.me.uk>

# install mysql-server
RUN apt-get install -y mysql-server-5.5
# bind to all interfcaces
ADD ./mysql-setup.sh /tmp/mysql-setup.sh
RUN /bin/sh -c /tmp/mysql-setup.sh

CMD ["/usr/sbin/mysqld"]
