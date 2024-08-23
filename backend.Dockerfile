FROM node:20.10.0

WORKDIR /

COPY . .

RUN npm install
COPY . .

RUN npm install -g typescript
RUN npm install -g nodemon
RUN npm install -g ts-node
RUN npm install -g rimraf

RUN npm run build

RUN npm install -g serve

EXPOSE 3500

CMD npm run start

