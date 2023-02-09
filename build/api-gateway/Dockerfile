FROM node:16.19.0 AS development

RUN npm i -g @nestjs/cli typescript ts-node

USER node

WORKDIR /app

COPY --chown=node:node ./api-gateway/package*.json /tmp/app/
RUN cd /tmp/app && yarn install --frozen-lockfile

COPY --chown=node:node ./api-gateway /app
RUN cp -a /tmp/app/node_modules /app

RUN chown -R node:node /app

EXPOSE 4000

RUN cp .env.example .env

CMD ["npm", "run", "start:dev"]
