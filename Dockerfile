FROM node:lts-alpine

RUN npm add -g npm prettier

VOLUME /data
WORKDIR /data

ENTRYPOINT ["prettier", "--arrow-parens=avoid", "--print-width=111", "--trailing-comma=none"]
CMD ["--help"]
