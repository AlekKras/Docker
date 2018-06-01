#Environment variables

Docker images should be designed that they can be transferred from one environment to the other without making any changes or requiring to be rebuilt. By following this pattern you can be confident that if it works in one environment, such as staging, then it will work in another, such as production.

With Docker, environment variables can be defined when you launch the container. For example with Node.js applications, you should define an environment variable for _NODEENV when running in production.

Using -e option, you can set the name and value as _-e NODEENV=production
