FROM node:14
WORKDIR /app
COPY package*.json/app
RUN npm install
COPY ..
RUN npm run build
Expose 3005
CMD ["npm","start"]
