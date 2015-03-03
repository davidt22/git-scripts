#!/bin/bash

echo ">>>>Buscando claves rotas>>>>";

filename=../missing-translations-keys.txt

echo "--------------- NEW CHECK TRANSLATIONS REVIEW --------------------" >> $filename

#bundlesList=(FrontPublicBundle) #for test one case
bundlesList=(CoreBundle EscrowBundle FrontPublicBundle OrderBundle PaymentBundle PrivateZoneBundle SeoBundle UserBundle WalletBundle)
langsList=(es en pt fr de)

for bundleName in "${bundlesList[@]}"
 do
    for lang in "${langsList[@]}"
    do
        echo ">$bundleName $lang"
        echo "" >> $filename
        echo $bundleName $lang >> $filename

        echo "--------------------" >> $filename
        echo "MOSTRANDO LAS KEYS QUE FALTAN PARA EL IDIOMA $lang" >> $filename
        php app/console translation:debug $lang $bundleName --only-missing >> $filename

#        echo "--------------------" >> $filename
#        echo "MOSTRANDO LAS KEYS QUE VA A AÑADIR EL COMANDO PARA EL IDIOMA $lang" >> $filename
#        php app/console translation:update $lang $bundleName --dump-messages >> $filename

        echo "--------------------" >> $filename
        echo "CORRIGIENDO LAS KEYS PERDIDAS" >> $filename
        php app/console translation:update $lang $bundleName --force --no-backup >> $filename
    done
 done

git status


# SHOWS THE MISSING KEYS
#php app/console translation:debug es FrontPublicBundle --only-missing

# SHOWS THE KEYS THAT ARE GOING TO BE FIXED BUT IT DOES NOTHING
#php app/console translation:update $lang $bundleName --dump-messages >> $filename

# FIXES THE MISSING KEYS IN THE FILE
#php app/console translation:update $lang $bundleName --dump-messages >> $filename