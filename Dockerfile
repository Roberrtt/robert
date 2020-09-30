FROM debian:stretch-slim 

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install -y nodejs

COPY bitcoin.conf  /home/rob
VOLUME /home/robert

EXPOSE 18332 18333

CMD ["bitcoind", "-conf=/home/robert/bitcoin.conf"]
