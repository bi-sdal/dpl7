# dpl7
Drupal 7

References for setting up SSL

- https://www.digicert.com/csr-ssl-installation/apache-openssl.htm
- https://hallard.me/enable-ssl-for-apache-server-in-5-minutes/
- https://wiki.apache.org/httpd/RedirectSSL

# Docker

After starting the container you need to run `service apache2 start` within the container.
This can be done via `docker exec -it <NAME OF THE DRUPAL CONTAINER> bash` then running the command there.
Or you can directly run the command via `docker exec` via:

```bash
docker exec -it <name of the drupal container> service apache2 start
```
