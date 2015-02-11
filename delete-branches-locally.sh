#!/bin/bash

#TODO: IGNORADO EN EL ARCHIVO GITIGNORE GLOBAL¡¡¡

echo ">>>> Deleting local branches >>>>";

branchesList=(

#  MERGED-hotfix/footer-out
#  MERGED-hotfix/user-selected-register-form

  )

for branchName in "${branchesList[@]}"
 do

        echo "Deleting local branch $branchName"
        git branch -D $branchName

 done

git branch
