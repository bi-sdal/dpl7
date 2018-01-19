FROM drupal:7
LABEL maintainer="chend@vt.edu"

RUN apt-get update && \
    apt-get install -y apt-utils && \
    apt-get update && \
    apt-get install -y rsync
