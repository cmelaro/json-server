FROM node:26-alpine

RUN apk add --no-cache tini

WORKDIR /json-server
RUN npm install json-server@^1.0.0-beta

ENTRYPOINT [ "/sbin/tini", "-g", "-w", "-vv", "--" ]
CMD ["npx", "json-server", "--port", "8000", "/data/db.json"]
