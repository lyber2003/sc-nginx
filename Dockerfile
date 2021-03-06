FROM nginx:latest

#RUN apt-get update && apt-get install -y mc nano

RUN usermod -u 1000 www-data

#CMD ["nginx"]

RUN mkdir -p /etc/service/nginx
ADD start.sh /etc/service/nginx/run
RUN chmod +x /etc/service/nginx/run

RUN mkdir -p /var/www
RUN mkdir -p /var/lib/nginx/cache

EXPOSE 80
# EXPOSE 443

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
