#!/bin/bash

# 中间件目录
MIDDLEWAREMIDDLEWARE_DIR=/data

# 创建中间件目录
sudo mkdir -p /$MIDDLEWAREMIDDLEWARE_DIR/redis

sudo cp -r server $MIDDLEWAREMIDDLEWARE_DIR/redis
sudo cp -r sentinel $MIDDLEWAREMIDDLEWARE_DIR/redis
sudo cp ../.env $MIDDLEWAREMIDDLEWARE_DIR/redis

cd /$MIDDLEWAREMIDDLEWARE_DIR/redis/server && /usr/bin/docker-compose up -d
cd /$MIDDLEWAREMIDDLEWARE_DIR/redis/sentinel && /usr/bin/docker-compose up -d

exit
