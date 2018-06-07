# Step 1 - Create a data container
Data containers are containers which sole responsibility to be a place to store and manage data.

Let's create one using BusyBox because it's small and lightweight. When we are creating the container,

we also provide a <code>-v</code> option to define where other containers will be reading and saving data.

```
docker create -v /config --name dataContainer busybox
```
# Step 2 - Copy files

We can copy files from our local client directory into the container. To copy files into a container we use the command <code>docker cp</code>.
The following command will copy the config.conf file into our dataContainer and the directory config.

```
docker cp config.conf dataContainer:/config/
```
# Step 3 - Mount Volumes

Now our Data Container has our config, we can reference the container when we launch dependent containers requiring the configuration file.

Using the --volumes-from <container> option we can use the mount volumes from other containers inside the container being launched.
In this case, we'll launch an Ubuntu container which has reference to our Data Container.
When we list the config directory, it will show the files from the attached container.

```
docker run --volumes-from dataContainer ubuntu ls /config 
```

# Step 4 - Export and Import Containers

If we want to move the Data Container to another machine then we can export it to a .tar file

```
docker export dataContainer > dataContainer.tar 
```

The command below will import the Data Container back into Docker:

```
docker import dataContainer.tar
```

            



