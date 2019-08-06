#!/usr/bin/env bash
cp -r ../../utils utils
cp -r ../../proxy_providers proxy_providers
cp -r ../../fake_identity fake_identity
cp -r ../../ads_platforms ads_platforms
cp -r ../../MyScheduler MyScheduler
cp -r ../../MyWebServer MyWebServer
docker build -t local/server_wandou:0.0.1 .
rm -rf utils proxy_providers fake_identity ads_platforms MyWebServer MyScheduler
