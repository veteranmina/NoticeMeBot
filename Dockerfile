FROM node:16.15-alpine

RUN apk update && \
    apk add git

RUN cd / && \
    git clone https://github.com/veteranmina/noticemebot && \
    cd noticemebot && \
    npm i && \
    npm run build

WORKDIR /noticemebot

ADD docker-entrypoint.sh /

CMD [ "/docker-entrypoint.sh" ]
