# NPM Install
So far, we have configured the foundation of our configuration. Now, it's time to install dependedncies. For the Node.JS it means installing
NPM install. We need to keep build times to a minimum. Docker caches the results of executing a line in the Dockefile for use in a future build.
If something has changed, then Docker will invalidate the current and all following lines to ensure everything is up-to-date. So we want to run <code>npm install</code>. We would also want to note that we want to re-run <code>npm install</code> only if something within <code>package.json</code> has changed.
