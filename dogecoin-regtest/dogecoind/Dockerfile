FROM  messari/dogecoin-core:latest

WORKDIR /home/dogecoin

ADD package.json /home/dogecoin/
ADD package-lock.json /home/dogecoin/

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install -y nodejs
RUN npm install

ADD dogecoin.conf /home/dogecoin/
ADD startup.sh /home/dogecoin/
ADD faucet.js /home/dogecoin/

ENTRYPOINT /home/dogecoin/startup.sh
