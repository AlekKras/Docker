#Building and Launching

To launch an application we need to build the image. 
The command to build the image is:
<code> docker build -t my-nodejs-app . </code>

The command to launch the built image is:
<code> docker run -d --name my-running-app -p 8080:8080 my-nodejs-app </code>

We can check if the container is accessible using curl
