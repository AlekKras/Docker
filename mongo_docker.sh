docker pull mongo

docker run --name CONTAINERNAME --restart=always -d -p 8080:8080 mongo mongod --auth

sudo docker exec -i -t CONTAINERNAME bash

mongo

use admin
db.createUser({user:"interapt", pwd:"interapt", roles:[{role:"root", db:"admin"}]})


exit
exit

## now you can connect with the admin user (from any mongo client >=3 )
## remember to use --authenticationDatabase "admin"
## mongo -u "interapt" -p "interapt" HOSTIP --authenticationDatabase "admin"
