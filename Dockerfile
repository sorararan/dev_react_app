FROM alpine:latest
ENV APP_PATH=/usr/src/app

RUN apk update \
  && apk add --no-cache nodejs npm

WORKDIR $APP_PATH
COPY ./app .
RUN npm install

EXPOSE 3000
CMD ["/bin/ash", "-c", "npm start"]
