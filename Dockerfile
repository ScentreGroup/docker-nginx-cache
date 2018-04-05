FROM debian:jessie

RUN apt-get update && \
    apt-get install -y ca-certificates nginx-extras liburi-encode-perl && \
    rm -rf /var/lib/apt/lists/*

ADD nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
