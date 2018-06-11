(echo big-temp-file.img >> .dockerignore) && (docker build -t no-large-file-context .)
