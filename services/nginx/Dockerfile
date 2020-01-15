FROM nginx

# Expose Nginx HTTP service
EXPOSE 80 443

RUN mkdir /logs
COPY ./services/nginx/app.conf /etc/nginx/sites-enabled/
COPY ./services/nginx/nginx.conf /etc/nginx/