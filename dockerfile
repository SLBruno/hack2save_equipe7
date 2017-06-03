FROM ruby:2.4-slim

RUN apt-get update -qq
RUN apt-get install -qq -y --no-install-recommends \
  build-essential nodejs npm libpq-dev git nodejs-legacy libfontconfig1-dev
RUN npm install -g phantomjs

ENV APP /hack2save_equipe7

RUN mkdir -p $APP

WORKDIR $APP

ENV BUNDLE_PATH /box

COPY . $APP
