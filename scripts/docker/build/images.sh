#!/bin/bash
# Cобираем образы

# - tgshop/poetry
sudo docker build -f ./docker/dockerfiles/libs/poetry -t tgshop/poetry .

# - tgshop/backend
sudo docker build -f ./docker/dockerfiles/backend -t tgshop/backend .
# - tgshop/balancer
sudo docker build -f ./docker/dockerfiles/balancer -t tgshop/balancer .
# - tgshop/database
sudo docker build -f ./docker/dockerfiles/database -t tgshop/database .
# - tgshop/migration
sudo docker build -f ./docker/dockerfiles/migration -t tgshop/migration .
# - tgshop/proxy
sudo docker build -f ./docker/dockerfiles/proxy -t tgshop/proxy .
# - tgshop/worker
sudo docker build -f ./docker/dockerfiles/worker -t tgshop/worker .
