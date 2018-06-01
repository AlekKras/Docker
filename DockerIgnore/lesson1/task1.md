# Docker Ignore
To prevent some sensitive files or directories from being included by mistake in images, you can add the file <code>.dockerignore</code>

##Example
A dockerfile copies the working directory into the Docker image. As a result, this would include potentially sensitive information such as passwords.

Let's view the Dockerfile

<code> cat Dockerfile </code>

Let's build the image with

<code> docker build -t password . </code>

Look at the output using 

<code> docker run password ls /app </code>

Now we want to make sure that during our build we don't include <code>passwords.txt</code> because it contains sensitive information.

So let's run:

<code>echo passwords.txt >> .dockerignore</code>

It's very similar to .gitignore.

Now we can build the image again and know that sensitive information will not be leaked.

<code>docker build -t  nopassword . </code>

Let's look at the output:

<code>docker run nopassword ls /app </code>
