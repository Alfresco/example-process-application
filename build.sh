#!/bin/sh
set -o errexit

echo "Building application $(basename $PWD)}..."

for DIR in $(ls -d */)
do
  cd $DIR
  ./build.sh
  cd ..
done

