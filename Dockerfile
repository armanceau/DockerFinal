FROM node:14-alpine as development
WORKDIR /usr/src/app
COPY package*.json ./
RUN rm -rf node_modules/ && \
    rm package*.json && \
    npm cache clean --force && \
    npm prune --production

FROM node:14-alpine as production
WORKDIR /usr/src/app
COPY --from=development /usr/src/app .
EXPOSE 8080
CMD [ "node", "app.js" ]