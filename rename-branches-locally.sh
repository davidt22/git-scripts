#!/bin/bash

#TODO: IGNORADO EN EL ARCHIVO GITIGNORE GLOBAL¡¡¡

echo ">>>> Rename local branches >>>>";


branchesList=(
#    hotfix-sprint-11/placeholders-register-form
  )

for branchName in "${branchesList[@]}"
 do
        echo "Renaming -> branchName -> MERGED-$branchName"
        git branch -m $branchName "MERGED-$branchName"

 done

git branch
