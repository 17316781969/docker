#!/usr/bin/env bash

docker save local/server_wandou:0.0.1 > server_wandou_ly.tar
scp server_wandou_ly.tar c@192.168.2.100: && rm server_wandou_ly.tar
