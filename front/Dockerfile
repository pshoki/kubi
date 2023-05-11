FROM node:12-alpine as build
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:stable-alpine
COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 8080
COPY --from=build /app/dist/front /app/static
