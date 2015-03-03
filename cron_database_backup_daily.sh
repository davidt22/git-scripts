#!/bin/bash

# BACKUP FOR MAC OSX
#/usr/local/mysql/bin/mysqldump -R -h localhost -uroot -proot yeeply > /Users/david/Sites/yeeply_backup.sql

#BACKUP FOR UBUNTU SERVER
mysqldump -R -h localhost -uroot -pW8l3LSsZ yeeply > /var/www/production/yeeply_database_backup.sql