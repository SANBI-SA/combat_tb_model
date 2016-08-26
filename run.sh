#!/bin/sh

#source ~/.virtualenvs/combat_tb_model/bin/activate

docker stop pymodel; docker rm pymodel

docker run -d \
  -p 7687:7687 \
  -p 7474:7474 \
  -e NEO4J_AUTH=none \
  --name pymodel \
  neo4j:3.0.4

sleep 10 #wait for the container to boot

docker ps

python main.py