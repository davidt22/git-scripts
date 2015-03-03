#!/bin/bash

rm -Rf app/cache/*
php app/console assets:install
php app/console assetic:dump --env=prod --no-debug

find . -type f -name "*.es.yml" -exec chmod 777 {} \;
find . -type f -name "*.en.yml" -exec chmod 777 {} \;
find . -type f -name "*.fr.yml" -exec chmod 777 {} \;
find . -type f -name "*.de.yml" -exec chmod 777 {} \;
find . -type f -name "*.pt.yml" -exec chmod 777 {} \;


#sudo sh fix-translations.sh