#!/bin/bash
git add $1
git commit -a -m "commit de $1"
if [ $2 == "bitcuket" ]; then
origen=origin2
else
if [ $2 == github ];then
origen=origin
fi
fi
git push -u $origen master

