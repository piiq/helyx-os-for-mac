#!/bin/bash
docker-compose up -d
xhost + 127.0.0.1 && docker exec -it helyx-os /home/ofuser/Engys/HELYX-OS/v2.4.0/HELYX-OS.sh