FROM node:16.13.2-buster-slim
LABEL maintainer="Wachira Duangdee https://github.com/wachira90/docker-node"
WORKDIR /usr/src/app/
RUN npm install -g npm@latest
COPY package.json /usr/src/app/
RUN npm install
COPY app.js /usr/src/app/
CMD ["node", "app.js"]
