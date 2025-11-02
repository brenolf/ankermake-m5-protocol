#! /bin/sh

sudo docker build -t ankerctl:local . \
    && sudo docker run -t -p 4470:4470/tcp -p 4470:4470/udp -e FLASK_HOST=0.0.0.0 -e FLASK_PORT=4470 --network=host ankerctl:local
