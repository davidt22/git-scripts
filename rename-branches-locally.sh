#!/bin/bash

#TODO: IGNORADO EN EL ARCHIVO GITIGNORE GLOBAL¡¡¡

echo ">>>>Renombrar ramas locales>>>>";


branchesList=(
#    feature-master/YS-434-buttons-front-link
#    feature/YS-436-fix-notification-develops
#    feature/YS-437-search-with-enter-directories
)

for branchName in "${branchesList[@]}"
 do
        echo "renombrando -> branchName -> MERGED-$branchName"
        git branch -m $branchName "MERGED-$branchName"

 done

git branch
