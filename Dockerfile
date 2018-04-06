FROM debian:jessie

RUN apt-get update && \
    apt-get install -y ca-certificates nginx-extras liburi-encode-perl && \
    rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf

CMD mkdir -p /var/cache/nginx

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
