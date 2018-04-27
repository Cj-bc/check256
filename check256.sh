#!/bin/bash

if [ $# -eq 2 ]
then
  wget -q "https://github.com/${1}/archive/${2}.tar.gz"
  echo `openssl dgst -sha256 ${2}.tar.gz`
  rm ${2}.tar.gz
else
    echo "usage: check256 <user/repo> <version>"
    echo "        if you use tag like 'v0.1.0', give all of it"
fi 
