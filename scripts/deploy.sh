#!/usr/bin/env bash

ssh -i ./deploy_key hilfling@$SERVER_IP_ADDRESS '
cd /var/www/hilfling-frontend-intern &&
git fetch --all && 
git reset --hard origin/master && 
git pull origin master &&
docker-compose up -d --build
'
