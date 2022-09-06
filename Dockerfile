FROM nginx
LABEL version="1.0.0" description="Disponibilizando site com NGINX" maintainer="Herivelto Gabriel <heriveltogabriel@gmail.com>"

COPY ./site /usr/share/nginx/html/
RUN ls -la /usr/share/nginx/html/*
EXPOSE 80

WORKDIR /usr/share/nginx/html/

ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]
