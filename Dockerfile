FROM elasticsearch:5.0.0
MAINTAINER Jeong-Hee Kang <keizie@gmail.com>

RUN ./bin/elasticsearch-plugin install https://oss.sonatype.org/service/local/repositories/releases/content/org/bitbucket/eunjeon/elasticsearch-analysis-seunjeon/5.0.0.0/elasticsearch-analysis-seunjeon-5.0.0.0.zip

VOLUME ["/usr/share/elasticsearch/data"]

WORKDIR /usr/share/elasticsearch

EXPOSE 9200 9300
CMD ["elasticsearch"]
