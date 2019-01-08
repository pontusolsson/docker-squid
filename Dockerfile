from alpine:3.8

RUN apk add --no-cache squid && \
  apk add --no-cache py3-pip && \
  pip3 install --upgrade pip && \
  pip3 install envtpl

COPY bin/ /usr/local/bin/
COPY squid.conf.j2 /etc/squid/

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["squid","-N"]

ENV PROXY ""
EXPOSE 3128
 
