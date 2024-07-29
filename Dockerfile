FROM node:lts-alpine

LABEL org.opencontainers.image.authors="Adam Rajczy" \
      org.opencontainers.image.description="Dockerized prettier application" \
      org.opencontainers.image.usage="docker run --rm -v $(pwd):/data arajczy/prettier $@" \
      org.opencontainers.image.version="1.0.0"

RUN corepack enable npm && corepack prepare npm@latest --activate && npm add -g prettier

VOLUME /data
WORKDIR /data

ENTRYPOINT ["prettier", "--arrow-parens=avoid", "--print-width=111", "--trailing-comma=none"]
CMD ["--help"]
