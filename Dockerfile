FROM node:4.6
USER root
WORKDIR /app
ADD . /app
EXPOSE 3000
