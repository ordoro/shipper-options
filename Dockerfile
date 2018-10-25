FROM library/node:10.11.0-alpine

WORKDIR /app

COPY . /app/

CMD ["node", "test.js"]
