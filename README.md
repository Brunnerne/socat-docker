# socat-docker
Docker image for quickly setting up a socat relay executing a given binary

In the following command, just replace `<file>` with the relative path to your binary, and `<port>` with the port you want to expose:
```sh
docker run -d --rm --name socat -v "$PWD"/<file>:/app/challbin:ro -p <port>:1337 ghcr.io/brunnerne/socat-docker:main
```

Your binary will then be available through `nc localhost <port>`

Make sure to stop the container after use: `docker kill socat`
