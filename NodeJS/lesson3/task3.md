# Application
Once we have installed our dependencies, we want to copy over the rest of our application's source code. 
Splitting the installation of the dependencies and copying out source code enables us to use the cache when required.

If we copied our code before running npm install then it would run every time as our code would have changed. 
By copying just package.json we can be sure that the cache is invalidated only when our package contents have changed.

So now we would want to use <code>EXPOSE</code> for the ports the application requires to be accessed. We would also want the entire directory to 
be copied.
