FROM node:12.22.0
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

RUN npm build

CMD [ "node", "/app/dist/shared/http/server.js" ]
