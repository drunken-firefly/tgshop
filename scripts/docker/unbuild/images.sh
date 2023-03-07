#!/bin/bash
# Удаляем образы

# - tgshop/backend - бекэнд
sudo docker rmi tgshop/backend
# - tgshop/database - база данных
sudo docker rmi tgshop/database
# - tgshop/reverse-proxy - nginx
sudo docker rmi tgshop/reverse-proxy
# - tgshop/worker - работник
sudo docker rmi tgshop/worker
# - tgshop/workers-balancer - балансировщик работников
sudo docker rmi tgshop/workers-balancer
