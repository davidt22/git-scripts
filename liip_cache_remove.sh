sudo chmod -R 777 web/media_liip/*
php app/console liip:imagine:cache:remove
sudo chmod -R 777 app/cache/*