FROM debian:stretch-slim 

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install -y nodejs
RUN npm install

ADD bitcoin.conf /home/bitecoin/
