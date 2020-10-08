FROM ruimarinho/bitcoin-core:0.17.0

WORKDIR /home/qtum

ADD package.json /home/qtum/
ADD package-lock.json /home/qtum/

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install -y nodejs
RUN npm install

ADD bitcoin.conf /home/qtum/
ADD startup.sh /home/qtum/
ADD faucet.js /home/qtum/

ENTRYPOINT /home/qtum/startup.sh
