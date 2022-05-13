FROM node:16.15-alpine

RUN apk update --no-cache && \
    apk add git

RUN cd / && \
    git clone https://github.com/veteranmina/noticemebot && \
    cd noticemebot && \
    npm i && \
    npm run build

WORKDIR /noticemebot

ENTRYPOINT ["/usr/local/bin/npm", "run", "serve"]
