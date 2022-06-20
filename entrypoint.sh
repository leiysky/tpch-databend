#!/bin/bash

# generate data
set -e
cd /tpch-dbgen
./dbgen -vf -s $1
mv *.tbl /data

# generate executable query text
export DSS_QUERY=./queries
cat queries/1.sql
for ((i=1;i<=22;i++)); do
  ./qgen -v -c -s $1 ${i} > /queries/tpch-q${i}.sql
done
