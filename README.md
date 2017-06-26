# xupnpd-docker

This is dockerized vesion of XUPNP, u need a config directory containing main config.
XUPNPD uses UDP multicast, so host mode must be used

# How to Build
docker build . -t xupnpd/xupnpd

# How to run
docker run -d --name=xupnpd --net=host -v /docker/xupnpd/config:/xupnpd/config/ xupnpd/xupnpd
