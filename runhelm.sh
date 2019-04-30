#!/bin/bash

helm install ibm-charts-public/strongswan -n strongswan \
  --set validate=simple \
  --set loadBalancerIP=167.212.121.2 \
  --set ipsec.auto=add \
  --set local.subnet="172.21.0.0/16\,172.30.0.0/16" \
  --set local.id=ibmcloudus \
  --set remote.gateway=%any \
  --set remote.subnet=192.168.100.0/24 \
  --set remote.id=on-prem \
  --set preshared.secret=supersecret

