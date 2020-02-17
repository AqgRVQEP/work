#!/bin/bash

# 中间件目录
MIDDLEWAREMIDDLEWARE_DIR=/data

# 创建中间件目录
sudo mkdir -p /$MIDDLEWAREMIDDLEWARE_DIR/mongodb

sudo cp docker-compose.yml $MIDDLEWAREMIDDLEWARE_DIR/mongodb
sudo cp -r mongo-entrypoint $MIDDLEWAREMIDDLEWARE_DIR/mongodb
sudo cp ../.env $MIDDLEWAREMIDDLEWARE_DIR/mongodb

cd /$MIDDLEWAREMIDDLEWARE_DIR/mongodb && /usr/bin/docker-compose up -d

exit
