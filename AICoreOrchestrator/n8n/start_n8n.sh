#!/bin/bash

mkdir -p n8n_data

sudo chown -R "$(id -u)":"$(id -g)" ${PWD}/n8n_data
sudo chmod -R 770 ${PWD}/n8n_data

docker compose up
