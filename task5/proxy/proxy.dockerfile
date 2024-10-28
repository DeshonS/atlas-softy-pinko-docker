FROM nginx:latest

COPY ./proxy.conf /etx/nginx/conf.d/default.conf