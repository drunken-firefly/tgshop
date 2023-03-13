#!/bin/bash
# Удаляем образы

# - tgshop/poetry
sudo docker rmi tgshop/poetry

# - tgshop/backend
sudo docker rmi tgshop/backend
# - tgshop/balancer
sudo docker rmi tgshop/balancer
# - tgshop/database
sudo docker rmi tgshop/database
# - tgshop/migration
sudo docker rmi tgshop/migration
# - tgshop/proxy
sudo docker rmi tgshop/proxy
# - tgshop/worker
sudo docker rmi tgshop/worker
