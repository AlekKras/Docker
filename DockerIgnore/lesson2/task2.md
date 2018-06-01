# Heavy Context

The .dockerignore file can ensure that sensitive details are not included in a Docker Image. However they can also be used to improve the build time of images.

In the environment, a 100M temporary file has been created. This file is never used by the Dockerfile. When you execute a build command, Docker sends the entire path contents to the Engine for it to calculate which files to include. As a result sending the 100M file is unrequired and creates a slower build.

You can see the 100M impact by executing following the command.

<code>docker build -t large-file-context . </code>
