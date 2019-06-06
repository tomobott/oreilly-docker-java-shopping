#!/bin/bash
# $1 is the version tag for the image
[ -z $1 ] && echo "you must supply a version tag for the image" && exit 1

cd shopfront
if docker build -t tomobott/djshopfront:$1 . ; then
  docker push tomobott/djshopfront:$1
fi
cd ..

cd productcatalogue
if docker build -t tomobott/djproductcatalogue:$1 . ; then
  docker push tomobott/djproductcatalogue:$1
fi
cd ..

cd stockmanager
if docker build -t tomobott/djstockmanager:$1 . ; then
  docker push tomobott/djstockmanager:$1
fi
cd ..
