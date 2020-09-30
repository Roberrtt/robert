FROM debian:stretch-slim 

ADD package.json /home/litecoin/
ADD package-lock.json /home/litecoin/

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install -y nodejs
RUN npm install

ADD litecoin.conf /home/litecoin/
ADD startup.sh /home/litecoin/
ADD faucet.js /home/litecoin/

ENTRYPOINT /home/litecoin/startup.sh
