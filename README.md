# NoticeMeBot

[![Docker build & Push](https://github.com/veteranmina/noticemebot/actions/workflows/main.yml/badge.svg)](https://github.com/veteranmina/noticemebot/actions/workflows/main.yml)

Current status:

NPM RUN SERVE in docker-entrypoint.sh fails

/docker-entrypoint.sh:4
npm run serve
^^^
SyntaxError: Unexpected identifier
at Object.compileFunction (node:vm:352:18)
at wrapSafe (node:internal/modules/cjs/loader:1033:15)
at Module._compile (node:internal/modules/cjs/loader:1069:27)
at Object.Module._extensions..js (node:internal/modules/cjs/loader:1159:10)
at Module.load (node:internal/modules/cjs/loader:981:32)
at Function.Module._load (node:internal/modules/cjs/loader:822:12)
at Function.executeUserEntryPoint [as runMain] (node:internal/modules/run_main:77:12)
at node:internal/main/run_main_module:17:47