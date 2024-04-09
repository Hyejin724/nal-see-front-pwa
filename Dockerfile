# Build stage
FROM node:20.11.1
WORKDIR /usr/src/app
COPY . .

RUN npm install -g serve
RUN npm ci
RUN npm run build


EXPOSE 5173
CMD ["serve", "build"]
