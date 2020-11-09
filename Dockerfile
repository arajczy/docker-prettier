FROM node:alpine3.12

RUN npm add -g prettier

VOLUME /data
WORKDIR /data

ENTRYPOINT ["prettier", "--print-width=111", "--arrow-parens=avoid", "--trailing-comma=none"]
CMD ["--help"]
