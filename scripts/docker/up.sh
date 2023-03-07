#!/bin/bash
# Создаем и запускаем контейнеры

sudo docker compose -f ./docker/docker-compose.yml --env-file ./docker/envs/general up -d