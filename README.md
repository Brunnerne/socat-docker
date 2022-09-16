# socat-docker
Docker image for quickly setting up a socat relay executing a given binary

`docker run --rm --name socat -v "$PWD"/<file>.sh:/app/challbin:ro -p <port>:1337 ghcr.io/brunnerne/socat-docker`
