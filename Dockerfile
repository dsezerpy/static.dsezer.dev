FROM nginx:alpine
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./site /usr/share/nginx/html
RUN rm /usr/share/nginx/html/index.html
RUN rm /usr/share/nginx/html/50x.html
EXPOSE 80
