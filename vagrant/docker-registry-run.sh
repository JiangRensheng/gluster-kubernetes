#!/bin/bash

sudo docker run -d \
  -p 80:5000 \
  --restart=always \
  --name registry \
  -v ~/docker/registry:/var/lib/registry \
  registry:latest
