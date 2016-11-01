FROM elasticsearch:2.4.0
MAINTAINER Jeong-Hee Kang <keizie@gmail.com>

RUN ./bin/plugin install org.bitbucket.eunjeon/elasticsearch-analysis-seunjeon/2.4.0.0

VOLUME ["/usr/share/elasticsearch/data"]

ENV ELASTICSEARCH_VERSION %%ELASTICSEARCH_VERSION%%
ENV PATH /usr/share/elasticsearch/bin:$PATH

WORKDIR /usr/share/elasticsearch

EXPOSE 9200 9300
CMD ["elasticsearch"]
