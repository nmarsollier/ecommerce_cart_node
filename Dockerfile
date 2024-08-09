# Docker para desarrollo
FROM node:22-bullseye

ENV MONGO_URL=mongodb://host.docker.internal/cart
ENV AUTH_SERVICE_URL=http://host.docker.internal:3000
ENV CATALOG_SERVICE_URL=http://host.docker.internal:3002
ENV RABBIT_URL=amqp://host.docker.internal

WORKDIR /app

# Puerto  Cart Service
EXPOSE 3003

CMD npm install & npm start
