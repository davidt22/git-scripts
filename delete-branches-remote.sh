#!/bin/bash

#TODO: IGNORADO EN EL ARCHIVO GITIGNORE GLOBAL¡¡¡

echo ">>>>Eliminando ramas remotas>>>>";

branchesList=(
  feature/YS-406-logger-publish-project
)

for branchName in "${branchesList[@]}"
 do

        echo "eliminando $branchName"
        sudo git push origin --delete $branchName

 done

#git branch -a
