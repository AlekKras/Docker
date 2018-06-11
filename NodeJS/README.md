# Node JS
In order to start the Docker image, need to concentrate on how to create a pre-built image. In order to do that for Node.js, we can use the base image called <code>node:7-alpine</code>. 
One of the folders where we can put it is <code>/src/app</code>. Let's do that by making the folder and putting it as a working directory. 
We would need to execute commands such as <code>FROM</code> to explain where we get our base image, <code>RUN</code> to run commands, and <code>WORKDIR</code> to show what is the working directory. Let's do it!


# NPM Install
So far, we have configured the foundation of our configuration. Now, it's time to install dependedncies. For the Node.JS it means installing
NPM install. We need to keep build times to a minimum. Docker caches the results of executing a line in the Dockefile for use in a future build.
If something has changed, then Docker will invalidate the current and all following lines to ensure everything is up-to-date. So we want to run <code>npm install</code>. We would also want to note that we want to re-run <code>npm install</code> only if something within <code>package.json</code> has changed.
                                                                                                                                                                                                              

# Application
Once we have installed our dependencies, we want to copy over the rest of our application's source code.
Splitting the installation of the dependencies and copying out source code enables us to use the cache when required.

If we copied our code before running npm install then it would run every time as our code would have changed.
By copying just package.json we can be sure that the cache is invalidated only when our package contents have changed.

So now we would want to use <code>EXPOSE</code> for the ports the application requires to be accessed. We would also want the entire directory to
be copied.


#Building and Launching

To launch an application we need to build the image. The command to build the image is:

```
docker build -t my-nodejs-app . 
```

The command to launch the built image is:

```
docker run -d --name my-running-app -p 8080:8080 my-nodejs-app 
```

We can check if the container is accessible using curl

#Environment variables

Docker images should be designed that they can be transferred from one environment to the other without making any changes or requiring to be rebuilt. By following this pattern you can be confident that 
if it works in one environment, such as staging, then it will work in another, such as production.

With Docker, environment variables can be defined when you launch the container. For example with Node.js applications, you should define an environment variable for _NODEENV when running in production.

Using -e option, you can set the name and value as _-e NODEENV=production







                                                                                                                       
