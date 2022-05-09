FROM node:16-alpine

RUN apk update --no-cache && \
    apk add git

RUN cd / && \
    git clone https://github.com/veteranmina/noticemebot && \
    cd noticeme-bot && \
    npm i && \
    npm run build

WORKDIR /noticeme-bot

ADD docker-entrypoint.sh /

CMD [ "/docker-entrypoint.sh" ]