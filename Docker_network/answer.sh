docker run -d --name redis-server redis
docker run --link redis-server:redis alpine env
docker run --link redis-server:redis alpine cat /etc/hosts
docker run --link redis-server:redis alpine ping -c 1 redis
docker run -d -p 3000:3000 --link redis-server:redis katacoda/redis-node-docker-example
curl localhost:3000
docker run -it --link redis-server:redis redis redis-cli -h redis
