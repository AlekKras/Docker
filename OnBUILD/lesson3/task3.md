# Building and Launching Container

If we want to build the image, we can run:
<code>docker build -t my-nodejs-app .</code>

The command which will launch the build image is:
<code>docker run -d --name my-running-app -p 8080:8080 my-nodejs-app </code>

And we can test it out using curl.
