# Elasticsearch
# docker pull barnybug/elasticsearch
#
# VERSION               0.0.1
FROM barnybug/openjdk-java7
MAINTAINER Barnaby Gray <barnaby@pickle.me.uk>

# install wget
RUN apt-get install -y wget

# download and unpack elasticsearch
RUN wget -q https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.3.tar.gz -O - | tar zxvf -

EXPOSE 9200:9200
CMD elasticsearch-0.90.3/bin/elasticsearch -f
