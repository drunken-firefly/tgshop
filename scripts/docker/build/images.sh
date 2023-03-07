#!/bin/bash
# Cобираем образы

# - tgshop/backend - бекэнд
sudo docker build -f ./docker/dockerfiles/backend -t tgshop/backend .
# - tgshop/database - база данных
sudo docker build -f ./docker/dockerfiles/database -t tgshop/database .
# - tgshop/reverse-proxy - nginx
sudo docker build -f ./docker/dockerfiles/reverse-proxy -t tgshop/reverse-proxy .
# - tgshop/worker - работник
sudo docker build -f ./docker/dockerfiles/worker -t tgshop/worker .
# - tgshop/workers-balancer - балансировщик работников
sudo docker build -f ./docker/dockerfiles/workers-balancer -t tgshop/workers-balancer .