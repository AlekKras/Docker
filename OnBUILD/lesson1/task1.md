# OnBuild

Dockerfiles are usually executed from top to bottom, you can still trigger an instruction to be executed at a later time when the image 
is used as the base for another image. Below is the Node.JS OnBuild Dockerfile:

<code>
FROM node:7
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN npm install
ONBUILD COPY . /usr/src/app
CMD ["npm", "start"]
</code>

As a result, we can build this image but the application specific commans won't be executed until the build image is used as a base image.
