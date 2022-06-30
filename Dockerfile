# docker build --no-cache -t climate-api:1.0 .
# docker run -d --name climate-api -p 8000:8000 climate-api:1.0
FROM node:12-alpine
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY app.js .
EXPOSE 8000
CMD ["node", "app.js"]
