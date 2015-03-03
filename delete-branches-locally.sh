#!/bin/bash

#TODO: IGNORADO EN EL ARCHIVO GITIGNORE GLOBAL¡¡¡

echo ">>>> Eliminando ramas locales >>>>";

branchesList=(
  YS-353-change-meta-developer
  feature/YS-338-message-to-pdf-files
  feature/YS-372-remove-movement-focus-textarea
  feature/YS-378-console-order-to-update-skills-to-three-years
  feature/YS-395-review-upgrade-plan-developer
  feature/YS-396-accept-offer-message
  feature/YS-399-change-mail-to-fernando
  feature/YS-401-review-traduction-lose-keys
  feature/YS-403-publish-project-description
  )



for branchName in "${branchesList[@]}"
 do

        echo "eliminando localmente $branchName"
        git branch -D $branchName

 done

git branch