FROM ubuntu:20.04

LABEL maintainer="mariosk@gmail.com"

# Add all flask packages to image
ADD app /app

WORKDIR /app

RUN chmod +x runme.sh

# Run
CMD ["./runme.sh"]
