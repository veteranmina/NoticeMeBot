FROM node:16-alpine

RUN apk update --no-cache && \
    apk add git

WORKDIR /noticemebot

RUN cd / && \
    git clone https://github.com/veteranmina/noticemebot && \
    cd noticemebot && \
    npm i && \
    npm run build

ADD docker-entrypoint.sh /

CMD [ "/docker-entrypoint.sh" ]
