FROM elasticsearch:2.4.0
MAINTAINER Jeong-Hee Kang <keizie@gmail.com>

RUN bin/plugin install org.bitbucket.eunjeon/elasticsearch-analysis-seunjeon/2.4.0.1

VOLUME ["/usr/share/elasticsearch/data"]

WORKDIR /usr/share/elasticsearch

EXPOSE 9200 9300
CMD ["elasticsearch"]
