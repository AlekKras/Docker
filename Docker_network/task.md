# Step 1 - Redis
The most common scenario for connecting to containers is an application connecting to a data-store.

Let's run a redis server.

```
docker run -d --name redis-server redis

```

# Step 2 - Create a link

To connect to a source container you use the <code>--link <container-name|id>:<alias></code> option while launching a new container.
By setting an alias we separate how our application is configured to how the infrastructure is called. 

## How links work

We will bring an Alpine container which is linked to our <code>redis-server</code>.

First, Docker will set some environment variables based on the linked to the container. These variables are important to give a way to 
reference info such as Ports and IP addresses via known names. 

We can output it via <code>env</code> command:

```
docker run --link redis-server:redis alpine env
```

Secondly, Docker will update <code>HOSTS</code> file of the container with an entry for our source container with three names: the original, the alias,
and the hash-id. We can output them via <code>cat /etc/hosts</code>:

```
docker run --link redis-server:redis alpine cat /etc/hosts
```

With a link created you can ping the source container in the same way as if it were a server running in your network.

```
docker run --link redis-server:redis alpine ping -c 1 redis
```
