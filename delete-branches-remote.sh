#!/bin/bash

#TODO: IGNORADO EN EL ARCHIVO GITIGNORE GLOBAL¡¡¡

echo ">>>>Eliminando ramas remotas>>>>";

branchesList=(

  MERGED-feature/YS-320-new-header-second-branch
  MERGED-feature/YS-345-developer-detail
  feature-children-328/YS-330-new-register-page
)


for branchName in "${branchesList[@]}"
 do

        echo "deleting remote branch $branchName"
        sudo git push origin --delete $branchName

 done

#git remote prune origin #elimina las ramas locales que se han eliminado del repositorio remoto

git branch -a
