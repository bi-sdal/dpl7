FROM drupal:7
LABEL maintainer="chend@vt.edu"

RUN apt-get update && \
    apt-get install -y apt-utils && \
    apt-get update && \
    apt-get install -y rsync elinks && \
    rm /etc/apache2/sites-enabled/000-default.conf

COPY 000-default_1.conf /etc/apache2/sites-enabled/000-default.conf

# enable ssl and redirect
RUN a2enmod ssl && \
    a2enmod rewrite

CMD service apache2 start && tail -f /dev/null
