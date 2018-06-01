#Dockerfile

The only aspect which needs to be defined on the application level is which port or ports to expose. 
Great advantage of OnBuild images is that our Dockerfile is now much simpler and can be easily reused across multiple projects
without having to re-run the same steps improving build times

<code> 
FROM node:7-onbuild
EXPOSE 8080
</code>
This will be created in the environment for you. 
