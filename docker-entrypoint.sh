#!/bin/bash

curl https://raw.githubusercontent.com/tiger0421/docker-hdl_slam/master/install_hdl_slam.sh > /tmp/install.sh
chmod 774 install.sh
source /opt/ros/$(ls /opt/ros)/setup.bash
sh /tmp/install.sh
rm /tmp/install.sh
echo '#!/bin/sh' > /tmp/docker-entrypoint.sh
echo 'bash' >> /tmp/docker-entrypoint.sh
echo 'source /root/catkin_ws/devel/setup.bash' >> /root/.bashrc

exec "$@"
