FROM arm32v7/ubuntu:20.04

LABEL maintainer="mariosk@gmail.com"

ENV COIN=${COIN}
ENV WALLET_ADDRESS=${WALLET_ADDRESS}
ENV SERVER=${SERVER}

ADD ./app.raspbian /app
COPY common/* /app/

WORKDIR /app

RUN chmod +x runme.sh && \
    cp /app/libatomic.so.1 /usr/lib/arm-linux-gnueabihf/ && \
    cp /app/libssl.so.1.1 /usr/lib/arm-linux-gnueabihf/ && \
    cp /app/libcrypto.so.1.1 /usr/lib/arm-linux-gnueabihf/ && \
    cp /app/libltdl.so.7 /usr/lib/arm-linux-gnueabihf/ && \
    cp /app/libhwloc.so.5 /usr/lib/arm-linux-gnueabihf/

# Run
CMD ["./runme.sh"]
