FROM ubuntu:latest
ENV PORT="1337"
ENV CHALLBIN="challbin"
ENV FLAG="./flag.txt"

EXPOSE $PORT

WORKDIR /

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install socat -y

COPY ./entrypoint /
RUN chmod +x /entrypoint
ENTRYPOINT ["/entrypoint"]