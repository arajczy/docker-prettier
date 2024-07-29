FROM node:lts-alpine

RUN corepack enable npm && corepack prepare npm@latest --activate && npm add -g prettier

VOLUME /data
WORKDIR /data

ENTRYPOINT ["prettier", "--arrow-parens=avoid", "--print-width=111", "--trailing-comma=none"]
CMD ["--help"]
