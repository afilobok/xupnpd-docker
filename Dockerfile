FROM lsiobase/alpine:latest
MAINTAINER Arthur Filobok arthur.filobok@gmail.com

# Install packages
RUN apk --no-cache add bash git alpine-sdk util-linux-dev openssl-dev mc
RUN git clone https://github.com/clark15b/xupnpd.git
WORKDIR "/xupnpd/src/"
RUN make
#RUN mkdir /xupnpd/config

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

#VOLUME ["/xupnpd/config"]


ENTRYPOINT ["/entrypoint.sh"]

