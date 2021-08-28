#!/bin/bash
docker build ./nginx/ -t nginxmine:new && docker build ./apache/ -t apachemine:new
docker-compose --compatibility up
