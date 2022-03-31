FROM node:16
WORKDIR /usr/src/rest-nest
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
# CMD [ "node", "dist/main" ]
# EXPOSE 3001
CMD node dist/main.js