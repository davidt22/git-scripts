#!/bin/bash

git --git-dir "/var/www/staging/yeeply-symfony-prerelease/.git" --work-tree "/var/www/staging/yeeply-symfony-prerelease/" ls-files -m -o --exclude-standard > /var/www/staging/yeeply-symfony-prerelease/modified_files.txt
php /var/www/staging/yeeply-symfony-prerelease/app/console yeeply:check:translations:updated
rm /var/www/staging/yeeply-symfony-prerelease/modified_files.txt
