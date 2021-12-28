#!/bin/bash
INSTALLED=0
DISTRIBUTION=$(awk -F= '/^DISTRIB_ID/{print $2}'  "/etc/lsb-release")
case $DISTRIBUTION in
    Ubuntu | Debian) bash Docker/docker_debian.sh && INSTALLED=1 ;;
    CentOS) bash Docker/docker_centOS.sh && INSTALLED=1 ;;
    RedHat) bash Docker/docker_redHat.sh && INSTALLED=1 ;;
    *) echo -e 'No Scripts are found for your system to install docker. \nHead to this link to install docker on your linux distribution \n https://docs.docker.com/engine/install/' ;;
esac
if [ $INSTALLED == 1 ];
then
echo -e "\n__________________________________________________\nDocker is now installed on your $DISTRIBUTION system."
fi