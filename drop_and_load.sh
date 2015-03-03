#echo "Careful, database will be purged. Do you want to continue Y/N ?"
#read confimation
#
#if (( ("$confimation") == "y"  ||  ("$confimation") == "Y")) ;then
#    echo "Deleting cache"
##    rm -rf app/cache/*
##    chmod 775 app/cache
#    echo "Dropping schema"
#    app/console doctrine:schema:drop --force --env=dev
#    echo "Creating schema"
#    app/console doctrine:schema:create --env=dev
#    echo "Loading Fixtures"
#    app/console doctrine:fixtures:load --env=dev --no-interaction
##    rm -rf app/cache/*
##    chmod 775 app/cache
#else
#    echo "Cancelling purge"
#fi
#
