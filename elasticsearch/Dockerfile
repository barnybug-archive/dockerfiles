# Elasticsearch
# docker pull barnybug/elasticsearch
#
# VERSION               0.0.1
FROM barnybug/openjdk-7-jre
MAINTAINER Barnaby Gray <barnaby@pickle.me.uk>

# install wget
RUN apt-get install -y wget && apt-get clean

# download and unpack elasticsearch
RUN wget -q https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.11.tar.gz -O - | tar zxvf -
# create directories with access rights for 'nobody'
RUN mkdir -m 777 elasticsearch-0.90.11/logs elasticsearch-0.90.11/data

USER nobody
CMD ["elasticsearch-0.90.11/bin/elasticsearch", "-f"]
