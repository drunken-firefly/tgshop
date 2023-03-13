#!/bin/bash
# Удаляем контейнеры

# - tgshop/backend
sudo docker rm tgshop_backend
# - tgshop/balancer
sudo docker rm tgshop_balancer
# - tgshop/database
sudo docker rm tgshop_database
# - tgshop/migration
sudo docker rm tgshop_migration
# - tgshop/proxy
sudo docker rm tgshop_proxy
# - tgshop/worker
sudo docker rm tgshop_worker
