FROM node:lts-alpine
WORKDIR /app
COPY server.js .
RUN npm install express serve-static
COPY dist ./dist
CMD node server.js
