#!/bin/bash
xhost +local:root


docker run -it --name hdl_slam \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -e QT_X11_NO_MITSHM=1 \
    --gpus all \
    tiger0421/docker-hdl_slam:1.0-glvnd-runtime-ubuntu16.04 \
    /bin/bash

xhost -local:root
