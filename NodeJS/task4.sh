(docker build -t my-nodejs-app .) && (docker run -d --name my-running-app -p 8080:8080 my-nodejs-app) || (curl http://localhost:8080) 
