# Elasticsearch
# docker pull barnybug/elasticsearch
FROM barnybug/openjdk-7-jre
MAINTAINER Barnaby Gray <barnaby@pickle.me.uk>

# install wget
RUN apt-get install -y wget && apt-get clean

# download and unpack elasticsearch
RUN wget -q https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.3.2.tar.gz -O - | tar zxvf -
RUN mkdir -m 777 elasticsearch-1.3.2/logs elasticsearch-1.3.2/data

EXPOSE 9200 9300
CMD ["elasticsearch-1.3.2/bin/elasticsearch"]
