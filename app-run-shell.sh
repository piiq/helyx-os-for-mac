#!/bin/bash
docker-compose up -d
xhost + 127.0.0.1 && docker exec -it -u ofuser helyx-os /bin/bash
