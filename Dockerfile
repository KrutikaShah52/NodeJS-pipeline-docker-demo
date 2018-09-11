FROM node:4.6
USER root
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 3000
CMD npm start
