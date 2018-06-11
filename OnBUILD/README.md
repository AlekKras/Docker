# OnBuild

Dockerfiles are usually executed from top to bottom, you can still trigger an instruction to be executed at a later time when the image
is used as the base for another image. Below is the Node.JS OnBuild Dockerfile:

```
FROM node:7
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN npm install
ONBUILD COPY . /usr/src/app
CMD ["npm", "start"]
```

As a result, we can build this image but the application specific commans won't be executed until the build image is used as a base image.

#Dockerfile

The only aspect which needs to be defined on the application level is which port or ports to expose.
Great advantage of OnBuild images is that our Dockerfile is now much simpler and can be easily reused across multiple projects
without having to re-run the same steps improving build times

```
FROM node:7-onbuild
EXPOSE 8080
```

This will be created in the environment for you.

# Building and Launching Container

If we want to build the image, we can run:

```
docker build -t my-nodejs-app .
```

The command which will launch the build image is:

```
docker run -d --name my-running-app -p 8080:8080 my-nodejs-app 
```

And we can test it out using curl
