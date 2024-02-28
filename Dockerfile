FROM nginx:latest

WORKDIR /var/www/html
ADD . .
ADD ./nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80