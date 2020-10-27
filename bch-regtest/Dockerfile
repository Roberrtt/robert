FROM debian:stretch-slim

RUN groupadd -r bitcoin && useradd -r -m -g bitcoin bitcoin

RUN set -ex \
	&& apt-get update \
	&& apt-get install -qq --no-install-recommends ca-certificates dirmngr gosu gpg wget jq \
	&& rm -rf /var/lib/apt/lists/*

ENV BITCOIN_VERSION 0.22.3
ENV BITCOIN_URL https://download.bitcoinabc.org/0.22.3/linux/bitcoin-abc-0.22.3-x86_64-linux-gnu.tar.gz
ENV BITCOIN_SHA256 3AEBCF642754BE53836B620D95C06AEBB37085D29606D19BF15AAB1167018873

# install bitcoin binaries
RUN set -ex \
	&& cd /tmp \
	&& wget -qO bitcoin.tar.gz "$BITCOIN_URL" \
	&& echo "$BITCOIN_SHA256 bitcoin.tar.gz" | sha256sum -c - \
	&& tar -xzvf bitcoin.tar.gz -C /usr/local --strip-components=1 --exclude=*-qt \
	&& rm -rf /tmp/*

# create data directory
ENV BITCOIN_DATA /data
RUN mkdir "$BITCOIN_DATA" \
	&& chown -R bitcoin:bitcoin "$BITCOIN_DATA" \
	&& ln -sfn "$BITCOIN_DATA" /home/bitcoin/.bitcoin \
	&& chown -h bitcoin:bitcoin /home/bitcoin/.bitcoin
VOLUME /data

COPY docker-entrypoint.sh /entrypoint.sh
COPY startup.sh /startup.sh
COPY bitcoin.conf /bitcoin.conf

RUN chmod +x startup.sh entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8332 8333 18444 18443
CMD ["bitcoind"]
