#docker ps -qa -- remove all

#docker container prune  -- remove all

#docker image prune

#docker container stop 344d1e7dadee

# stage1 as builder
FROM node:18-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY ./ .
RUN npm run build

FROM nginx as production-stage
RUN mkdir /app
COPY --from=build-stage /app/dist /app
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]

#docker build -t vue-app .

#docker run -d -p 3000:80 vue-app

#docker container stop  fe0789342de0

#docker login

#docker images

# docker tag a9afb4e175e0 tharynouen/dev

#docker push tharynouen/dev


#docker-compose up -d
#
#docker build . -t my-app
#
#docker run -d -p 8080:80 my-app
#
#curl localhost:8080
