FROM ubuntu:bionic
WORKDIR /var/www/html
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    apache2 \
    # php \
 && apt-get -y clean \
 && rm -rf /var/lib/apt/lists/*
COPY ./htdocs /var/www/html
CMD ["apachectl","-DFOREGROUND"]