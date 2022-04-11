FROM node:14-alpine AS development
ENV NODE_ENV development
#directory
WORKDIR /app
COPY package.json .
RUN npm install
EXPOSE 3000
COPY . .
CMD ["npm","start"]

