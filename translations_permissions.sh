#!/bin/bash

find . -type f -name "*.es.yml" -exec chmod 777 {} \;
find . -type f -name "*.en.yml" -exec chmod 777 {} \;
find . -type f -name "*.fr.yml" -exec chmod 777 {} \;
find . -type f -name "*.de.yml" -exec chmod 777 {} \;
find . -type f -name "*.pt.yml" -exec chmod 777 {} \;


