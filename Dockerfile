FROM node:alpine

WORKDIR /mongo-k8s-sidecar

COPY package.json /mongo-k8s-sidecar/package.json

RUN npm install

COPY ./src /mongo-k8s-sidecar/src
COPY .foreverignore /.foreverignore

CMD ["npm", "start"]
