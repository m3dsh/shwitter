FROM node:16-alpine
WORKDIR /app
COPY package.json ./
RUN yarn install --frozen-lockfile
COPY . .
COPY . /app
RUN mkdir build

EXPOSE 3000
CMD ["yarn", "start"]

