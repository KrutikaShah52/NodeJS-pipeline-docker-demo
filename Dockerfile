FROM node:4.6
user root
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 3000
CMD npm start
