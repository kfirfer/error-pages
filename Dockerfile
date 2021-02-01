FROM nginx:1.19.6-alpine

COPY --chown=nginx \
     ./nginx.conf /etc/nginx/conf.d/default.conf
COPY --chown=nginx \
     --from=tarampampam/error-pages:1.3.1 \
     /opt/html/ghost /usr/share/nginx/errorpages/_error-pages
