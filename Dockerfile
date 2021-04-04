FROM mhart/alpine-node:latest

RUN apk update && \
    apk add --no-cache --update curl \
                                wget \
                                tar \
                                unzip \
                                xz \
                                bash && \
    mkdir /app
WORKDIR /app

CMD bash -c "$(curl -sL "$SCRIPT")"