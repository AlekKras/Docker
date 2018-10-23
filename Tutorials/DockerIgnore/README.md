# Docker Ignore
To prevent some sensitive files or directories from being included by mistake in images, you can add the file <code>.dockerignore</code>

##Example
A dockerfile copies the working directory into the Docker image. As a result, this would include potentially sensitive information such as passwords.

Let's view the Dockerfile

```
cat Dockerfile 
```

Let's build the image with

```
docker build -t password .
```

Look at the output using:

```
docker run password ls /app
```

Now we want to make sure that during our build we don't include <code>passwords.txt</code> because it contains sensitive information.

So let's run:

```
echo passwords.txt >> .dockerignore
```

It's very similar to .gitignore.

Now we can build the image again and know that sensitive information will not be leaked.

```
docker build -t  nopassword . 
```

Let's look at the output:

```
docker run nopassword ls /app
```                                
# Heavy Context

The .dockerignore file can ensure that sensitive details are not included in a Docker Image. However they can also be used to improve the build time of images.

In the environment, a 100M temporary file has been created. This file is never used by the Dockerfile. When you execute a build command, Docker sends the entire path contents to the Engine for it to calculate which files to include. As a result sending the 100M file is unrequired and creates a slower build.

You can see the 100M impact by executing following the command.

```
docker build -t large-file-context . 
```

# Optimised Build

To speed up our build, we can include the filename of the large file in the ignore file

```
echo big-temp-file.img >> .dockerignore
```

When we rebuild the image, it will be much faster

```
docker build -t no-large-file-context . 
```

Optimisation has a greater impact when ignoring large directories such as .git                                                                                                                                                                                                             
~                                                                                                           
