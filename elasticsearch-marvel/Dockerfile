# Elasticsearch
# docker pull barnybug/elasticsearch
#
# VERSION               0.0.1
FROM barnybug/elasticsearch
MAINTAINER Barnaby Gray <barnaby@pickle.me.uk>

# install wget
USER root
RUN elasticsearch-1.0.0.RC1/bin/plugin -i elasticsearch/marvel/latest

USER nobody