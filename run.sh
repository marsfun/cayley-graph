#!/usr/bin/env bash


set -e 
set -x

docker run  -v$PWD/cfg:/cfg -v $PWD/data:/data -p 64210:64210 -d quay.io/cayleygraph/cayley -c /cfg/cayley.yml --init -i /data/testdata.nq
