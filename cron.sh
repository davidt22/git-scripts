#!/bin/bash
php /var/www/production/yeeply-symfony/app/console yeeply:expiration
php /var/www/production/yeeply-symfony/app/console yeeply:notificator
php /var/www/production/yeeply-symfony/app/console yeeply:migration:userProfileScore
php /var/www/production/yeeply-symfony/app/console yeeply:sitemap
php /var/www/production/yeeply-symfony/app/console yeeply:notificator:new-projects daily
date >> cron.log
