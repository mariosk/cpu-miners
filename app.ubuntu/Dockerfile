FROM ubuntu:20.04

LABEL maintainer="mariosk@gmail.com"

ENV COIN=${COIN}
ENV WALLET_ADDRESS=${WALLET_ADDRESS}
ENV SERVER=${SERVER}

ADD ./app.ubuntu /app
COPY common/* /app/

WORKDIR /app

RUN chmod +x runme.sh

# Run
CMD ["./runme.sh"]