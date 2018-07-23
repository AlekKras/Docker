# react

TL;DR:
`docker pull alekkras/react && docker container run -it -p 3000:3000 react:app`

Longer version:

Let's do it!

Create `create-react-app`:

`yarn global add create-react-app`

Then we need to create it:

`create-react-app docker-create-react-app`

Now we do need to build a container:

`docker image build -t react:app .`

Now let's run it:

`docker container run -it -p 3000:3000 react:app`
