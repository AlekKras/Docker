docker create -v /config --name dataContainer busybox
docker cp config.conf dataContainer:/config/
docker run --volumes-from dataContainer ubuntu ls /config 
docker run --volumes-from dataContainer ubuntu ls /config
docker export dataContainer > dataContainer.tar
docker import dataContainer.tar
