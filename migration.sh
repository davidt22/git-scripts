#!/bin/bash
php app/console doctrine:database:drop --force
php app/console doctrine:database:create
php app/console doctrine:schema:drop --force
php app/console doctrine:schema:create
echo "init yeeply:migration:user 2"
php app/console yeeply:migration:user 2 &
echo "init yeeply:migration:user 1"
php app/console yeeply:migration:user 1
echo "init yeeply:migration:user 3"
php app/console yeeply:migration:user 3
echo "init yeeply:migration:user:skills"
php app/console yeeply:migration:user:skills
echo "init yeeply:migration:user:languages "
php app/console yeeply:migration:user:languages
echo "init yeeply:migration:user:wallet "
php app/console yeeply:migration:user:wallet
echo "init yeeply:migration:user:plan "
php app/console yeeply:migration:developer:plan
echo "init yeeply:migration:user:experiences "
php app/console yeeply:migration:curriculum:experiences
echo "init yeeply:migration:user:courses "
php app/console yeeply:migration:curriculum:courses
echo "init yeeply:migration:user:studies "
php app/console yeeply:migration:curriculum:studies
echo "init yeeply:migration:user:files "
php app/console yeeply:migration:portfolio:files
echo "init yeeply:migration:user:apps "
php app/console yeeply:migration:portfolio:apps
echo "init yeeply:migration:user:screenshots "
php app/console yeeply:migration:app:screenshots
echo "init yeeply:migration:user:projects "
php app/console yeeply:migration:projects
echo "init yeeply:migration:user:rating "
php app/console yeeply:migration:user:rating
echo "init yeeply:migration:user:proposals "
php app/console yeeply:migration:proposals
echo "init yeeply:migration:user:tasks "
php app/console yeeply:migration:tasks
echo "init yeeply:migration:user:tasks:subtasks "
php app/console yeeply:migration:task:subtasks
echo "init yeeply:migration:user:project:files "
php app/console yeeply:migration:project:files
echo "init yeeply:migration:user:project:messages "
php app/console yeeply:migration:project:messages
echo "init yeeply:migration:user:project:confidential "
php app/console yeeply:migration:project:confidential
echo "init yeeply:migration:userProfileScore  "
php app/console yeeply:migration:userProfileScore
echo "init yeeply:migration:userUpdateRating    "
php app/console yeeply:migration:userUpdateRating
php app/console fos:user:change-password borja@yeeply.com borferpa
php app/console fos:user:change-password fernando@yeeply.com capde13

