# Copy files

We can copy files from our local client directory into the container. To copy files into a container we use the command <code>docker cp</code>.
The following command will copy the config.conf file into our dataContainer and the directory config.

<code>
docker cp config.conf dataContainer:/config/
</code>

