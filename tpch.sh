#!/bin/bash
set -e

docker build  -f tpchgen.dockerfile -t databend-latest:latest .

rm -rf data executable_queries
mkdir data executable_queries 2>/dev/null
docker run  -v `pwd`/data:/data  -v `pwd`/executable_queries:/queries -it --rm databend-latest:latest $1
ls -l data