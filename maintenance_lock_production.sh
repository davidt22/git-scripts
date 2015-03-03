#!/bin/bash

#1-ponemos pagina en mantenimiento
php app/console lexik:maintenance:lock --no-interaction --env=prod

#2-backup de la BD
sh cron_database_backup_daily.sh
echo "Backup base de datos de produccion terminado"

##3-nos situamos en master
#git checkout master
#
##4-creamos una rama a partir de master
#git branch master_rollback
#echo "Backup de master terminado"
#
##5-actualizamos el codigo de produccion
#git pull origin master
#echo "Master actualizado"
#
##6-instalamos los assets
#sh refresh_cache.sh
#echo "Refresh cache terminado"
#
##Igual en algun momento hay que instalar vendors o algo
##cp  -r vendors/ ../vendros_backup
##composer update -o
#
##damos permisos
#chmod -R 777 app/cache/*
#
##Abrimos la pagina de nuevo
#echo "Abrimos la web de nuevo a los usuarios"
#php app/console lexik:maintenance:unlock --no-interaction --env=prod