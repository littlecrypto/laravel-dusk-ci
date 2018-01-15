#!/bin/bash
sed -i "s|root /var/www/html/public;|root ${CI_PROJECT_DIR}/frontend2/public;|" /etc/nginx/sites-available/frontend
sed -i "s|root /var/www/html/public;|root ${CI_PROJECT_DIR}/backend2/public;|" /etc/nginx/sites-available/backend
service php7.1-fpm start
service nginx start