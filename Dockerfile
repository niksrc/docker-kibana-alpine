FROM alpine:3.3
RUN apk add --no-cache curl
RUN curl https://artifacts.elastic.co/downloads/kibana/kibana-5.2.1-linux-x86_64.tar.gz -o kibana.tar.gz
RUN tar -xvf kibana.tar.gz
ADD ./kibana.yml /kibana/config/
ENTRYPOINT ["/kibana/bin/serve"]
