import { Client, Intents, Message } from "discord.js"
import { Handler } from "./say";
import * as log from './lib/console'

const token = process.env.TOKEN;
const app_url = process.env.APP_URL;
const discordchan = process.env.DISCORDCHAN;
const dmchanlck = process.env.DMLCKCHANNEL;

if (token === undefined) {
  log.error(`no discord token found in env. set \`TOKEN\` bye!`);
  process.exit();
}

if (app_url === undefined) {
  log.error(`no seat address found in env. set \`APP_URL\``);
}

if (discordchan === undefined) {
  log.error(`No discord channel specified with .env \`DISCORCHAN\`, DM command listening to all viewed channels`)
}

if (dmchanlck === undefined) {
  log.error(`.env \`DMLCKCHANNEL\` not defined with 1, DM command listening to all viewed channels`)
}

const client: Client = new Client({
  intents: [
    Intents.FLAGS.GUILDS,
    Intents.FLAGS.GUILD_MESSAGES,
    Intents.FLAGS.DIRECT_MESSAGES,
  ]
});
const handler: Handler = new Handler();

client.on(`ready`, () => {
  log.info(`ready & authenticated as ${client.user?.tag}`);
});

client.on(`message`, (msg: Message) => {
  handler.respond(msg);
});

client.login(token);
