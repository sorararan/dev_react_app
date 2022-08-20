FROM node:alpine
ENV APP_PATH=/usr/src/app

RUN apk update

USER node
WORKDIR $APP_PATH
COPY --chown=node:node ./app .
RUN npm install

EXPOSE 3000
CMD ["/bin/ash", "-c", "npm start"]
