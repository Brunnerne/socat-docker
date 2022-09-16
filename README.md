# socat-docker
Docker image for quickly setting up a socat relay executing a given binary

Just replace `<file>` with the relative path to your binary, and `<port>` with the port you want to expose the relay on in the following command:
```sh
docker run --rm --name socat -v "$PWD"/<file>:/app/challbin:ro -p <port>:1337 ghcr.io/brunnerne/socat-docker:main
```

Your binary will then be available through `nc localhost <port>`
