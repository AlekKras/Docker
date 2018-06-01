# Optimised Build

To speed up our build, we can include the filename of the large file in the ignore file

<code>echo big-temp-file.img >> .dockerignore</code>

When we rebuild the image, it will be much faster

<code>docker build -t no-large-file-context . </code>

Optimisation has a greater impact when ignoring large directories such as .git
