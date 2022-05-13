# NoticeMeBot

[![Docker build & Push](https://github.com/veteranmina/noticemebot/actions/workflows/main.yml/badge.svg)](https://github.com/veteranmina/noticemebot/actions/workflows/main.yml)

This bot is created to do one simple thing, notice you when asked "!Notice me Senpai" with a private message.

#Available commands:
```
!Notice me Senpai - Private messages you with an address set in APP_URL
!Ping - pong!
```

#Environment variables needed:
```
TOKEN - Discord token to authorize bot connection

APP_URL - Web address for bot to relay via private message.
```
#Optional variables:
```
DISCORDCHAN: Discord channel ID for !Notice me senpai command to listen for
Note: Not populating this will default to answering all requests

DMLCKCHANNEL: Locks !Notice me senpai to specified Discord channel
Note: Not populating this will allow bot to listen and answer to other granted channels
```