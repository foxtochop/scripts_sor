#!/bin/bash
git rm $1
git commit -a -m "he borrado el archivo $1"
git push origin master
