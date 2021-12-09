FROM nginx:1.21.4-alpine
COPY dist /usr/share/nginx/html
COPY nginxconf /etc/nginx/conf.d/default.conf
CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
