FROM --platform=linux/amd64 node:18-alpine

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

RUN npm install -g serve

EXPOSE 8080

CMD ["serve", "-s", "dist", "-l", "8080"]
