#!/bin/bash
docker run --rm \
  --name localswan \
  -p 500:500/udp \
  -p 4500:4500/udp \
  -e STRONGSWAN_LEFTID=on-prem \
  -e STRONGSWAN_LEFTSUBNET=192.168.100.0/24 \
  -e STRONGSWAN_RIGHT=169.63.238.34 \
  -e STRONGSWAN_RIGHTID=ibmcloudus \
  -e STRONGSWAN_RIGHTSUBNET=172.21.0.0/16i\,172.30.0.0/16 \
  -e STRONGSWAN_PSK=supersecret \
  --cap-add NET_ADMIN \
  localswan

