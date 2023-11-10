FROM node:14-alpine
WORKDIR /app
COPY package*.json  ./
COPY . .
RUN npm run build
EXPOSE 8000
CMD ["npm", "start"]

