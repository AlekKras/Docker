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
# Step 3 - Connect to App

Now we have a link created, apps can connect and communiate with the source container.

## Example Application

Here is a simple node.js application which connects to redis using the hostname <code>redis</code>

```
docker run -d -p 3000:3000 --link redis-server:redis katacoda/redis-node-docker-example
```

## Test Connection

We will send an HTTP request to the application will store the request in Redis and return a count.

Just go to <code>localhost:3000</code>

# Step 4 - Connect to Redis CLI

The same way you can connect  source containers to applications, you can also connect them to their
own CLI tools.

## Launching Redis CLI

The command below  will launch an instance of the Redis cli tool and connect to the redis server
via its alias:

```
docker run -it --link redis-server:redis redis redis-cli -h redis
```

See for yourself what is going on.
