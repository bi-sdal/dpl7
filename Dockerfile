FROM drupal:7
LABEL maintainer="chend@vt.edu"

RUN apt-get update && \
    apt-get install -y apt-utils && \
    apt-get update && \
    apt-get install -y rsync elinks

# enable ssl and redirect
RUN a2enmod ssl && \
    a2enmod rewrite

CMD service apache2 start && tail -f /dev/null
