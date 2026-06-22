FROM nginx:alpine
RUN sed -i 's/listen       80;/listen       4000;/g' /etc/nginx/conf.d/default.conf
WORKDIR /app
EXPOSE 4000
CMD ["nginx", "-g", "daemon off;"]