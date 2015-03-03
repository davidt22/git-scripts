#!/bin/bash

sudo setfacl -R -m u:www-data:rwx -m u:`whoami`:rwx web/bundles
sudo setfacl -dR -m u:www-data:rwx -m u:`whoami`:rwx web/bundles

sudo setfacl -R -m u:www-data:rwx -m u:`whoami`:rwx app/cache
sudo setfacl -dR -m u:www-data:rwx -m u:`whoami`:rwx app/cache

sudo setfacl -R -m u:www-data:rwx -m u:`whoami`:rwx app/logs
sudo setfacl -dR -m u:www-data:rwx -m u:`whoami`:rwx app/logs
