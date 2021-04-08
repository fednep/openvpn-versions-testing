#!/bin/bash

VERSION=$1

echo Version: $VERSION

docker build . -f Dockerfile-$VERSION -t test-openvpn$VERSION
docker run -it --cap-add=NET_ADMIN test-openvpn$VERSION bash
