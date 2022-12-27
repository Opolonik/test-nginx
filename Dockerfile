FROM alpine
RUN apk update && apk add nginx && adduser -D -g 'www' www
RUN mkdir /www && chown -R www:www /var/lib/nginx && chown -R www:www /www
CMD ["nginx", "-g", "daemon off;"]