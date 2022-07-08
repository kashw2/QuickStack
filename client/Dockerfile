FROM kyma/docker-nginx

COPY ./dist/client /var/www
COPY ./nginx.conf /etc/nginx/sites-enabled/default

CMD 'nginx'

EXPOSE 80
