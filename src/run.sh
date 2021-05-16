#!/bin/bash
docker network create reddit
docker run -d --network=reddit --network-alias=post_db --network-alias=comment_db mongo:latest
docker run -d --network=reddit --network-alias=post $USER/post:1.0
docker run -d --network=reddit --network-alias=comment $USER/comment:1.0
docker run -d --network=reddit -p 9292:9292 $USER/ui:2.0
