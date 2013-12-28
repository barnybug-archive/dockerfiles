# Elasticsearch
# docker pull barnybug/elasticsearch
#
# VERSION               0.0.1
FROM barnybug/openjdk-java7
MAINTAINER Barnaby Gray <barnaby@pickle.me.uk>

# install wget
RUN apt-get install -y wget && apt-get clean

# download and unpack elasticsearch
RUN wget -q https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.9.tar.gz -O - | tar zxvf -
# create directories with access rights for 'nobody'
RUN mkdir -m 777 elasticsearch-0.90.9/logs elasticsearch-0.90.9/data

USER nobody
CMD ["elasticsearch-0.90.9/bin/elasticsearch", "-f"]
