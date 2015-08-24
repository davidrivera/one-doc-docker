FROM ruby:2.2.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev libicu-dev cmake php5

RUN mkdir -p ~/.ssh && touch ~/.ssh/known_hosts && ssh-keyscan -t rsa github.com > ~/.ssh/known_hosts

RUN cd /opt && wget https://nodejs.org/dist/v0.12.7/node-v0.12.7.tar.gz && tar -zxvf node-v0.12.7.tar.gz
RUN cd /opt/node-v0.12.7 && ./configure && make && make install

