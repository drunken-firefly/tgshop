#!/bin/bash
# Удаляем контейнеры

# - tgshop/backend - бекэнд
sudo docker rm tgshop_backend
# - tgshop/database - база данных
sudo docker rm tgshop_database
# - tgshop/reverse-proxy - nginx
sudo docker rm tgshop_reverse-proxy
# - tgshop/worker - работник
sudo docker rm tgshop_worker
# - tgshop/workers-balancer - балансировщик работников
sudo docker rm tgshop_orkers-balancer