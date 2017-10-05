FROM node:latest
RUN apt-get update && apt-get install -y sqlite3 libsqlite3-dev
WORKDIR /app
RUN sqlite3 todos.db
COPY package.json .
RUN npm install
COPY . .
RUN node_modules/.bin/knex migrate:latest --knexfile ./src/knexfile.js && \
    node_modules/.bin/knex seed:run --knexfile ./src/knexfile.js
EXPOSE 4444
RUN npm run prestart
CMD ["npm", "start"]