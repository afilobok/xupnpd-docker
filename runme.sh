docker build . -t xupnpd/xupnpd



docker run -d --name=xupnpd --net=host -v /docker/xupnpd/config:/xupnpd/config/ xupnpd/xupnpd

docker run -it --name=xupnpd --net=host -v /docker/xupnpd/config:/xupnpd/config/ xupnpd3/xupnpd3