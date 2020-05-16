FROM tiger0421/ros-gpu-gazebo:1.0-glvnd-runtime-ubuntu16.04

ARG ROS_DISTRO
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install -y \
        libglm-dev \
        libglfw3-dev \
        ros-$ROS_DISTRO-geodesy \
        ros-$ROS_DISTRO-pcl-ros \
        ros-$ROS_DISTRO-nmea-msgs \
        ros-$ROS_DISTRO-libg2o \
        vim \
        tmux \
    && \
    apt autoremove -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root

COPY docker-entrypoint.sh /tmp
ENTRYPOINT ["/tmp/docker-entrypoint.sh"]
CMD ["/bin/bash"]
