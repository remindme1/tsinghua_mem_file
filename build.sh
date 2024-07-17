#! /bin/bash
set -ex
cd `dirname $0`
go env -w GOPROXY=https://goproxy.cn,direct
go build -v -ldflags '-w' -o main
mkdir -p output/
mv main output/