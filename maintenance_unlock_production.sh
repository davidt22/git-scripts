#!/bin/bash

#Abrimos la pagina de nuevo
echo "Abrimos la web de nuevo a los usuarios"
php app/console lexik:maintenance:unlock --no-interaction --env=prod

#damos permisos
chmod -R 777 app/cache/*

