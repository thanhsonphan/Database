FROM openjdk:8-jre

RUN mkdir /usr/app
WORKDIR /usr/app
COPY API.jar .

CMD ["java", "-jar", "API.jar"]

# FROM node:10-alpine
# RUN mkdir /usr/app
# WORKDIR /usr/app
# COPY package.json .
# RUN yarn
# COPY . .

# CMD ["yarn", "start"]