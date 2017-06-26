#!/bin/bash

rm /xupnpd/src/xupnpd.lua
ln -s /xupnpd/config/xupnpd.lua /xupnpd/src/
/xupnpd/src/xupnpd
