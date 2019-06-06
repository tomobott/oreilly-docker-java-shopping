#!/bin/bash

cd shopfront
docker run --rm -it -v $(pwd):/project maven mvn clean install -f /project
cd ..
cd productcatalogue
docker run --rm -it -v $(pwd):/project maven mvn clean install -f /project
cd ..
cd stockmanager
docker run --rm -it -v $(pwd):/project maven mvn clean install -f /project
cd ..

