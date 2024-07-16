#! /bin/bash
set -ex
cd `dirname $0`

go build -v -ldflags '-w' -o main
mkdir -p output/
mv main output/