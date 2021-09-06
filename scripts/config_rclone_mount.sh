#!/bin/bash

sudo mkdir -p /mnt/pcloud /mnt/nas

sudo cp ${HOME}/services/nas.service /etc/systemd/system
sudo cp ${HOME}/services/pcloud.service /etc/systemd/system

sudo chmod +x /etc/systemd/system/nas.service /etc/systemd/system/pcloud.service

sudo systemctl daemon-reload

sudo systemctl start nas pcloud
sudo systemctl enable nas pcloud