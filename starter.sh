#!/bin/bash

npm run build
cat docker_template_data/apache_conf.txt >> /etc/apache2/apache2.conf
cp docker_template_data/home_iot.conf /etc/apache2/sites-available/
a2dissite 000-default.conf
a2ensite home_iot
service apache2 restart
exec /bin/bash