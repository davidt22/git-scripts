#!/bin/bash
php /var/www/production/yeeply-symfony/app/console yeeply:notificator:new-projects monthly
date >> cron_monthly.log
