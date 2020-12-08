#!/bin/bash

rm -rf ./src/*
rm -rf ./database/data
mkdir ./database/data
rm -rf ./logs
mkdir logs
mkdir logs/nginx
docker system prune -a
