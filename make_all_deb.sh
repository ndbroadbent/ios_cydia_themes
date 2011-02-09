#!/bin/bash
mkdir -p ./build

for package_dir in $(find . -maxdepth 1 -mindepth 1 -type d -not -name ".*" -not -name "build"); do
    cd $package_dir
    ./makedeb.sh
    mv -f *.deb ../build/
    cd ..
done

cd ./build
for deb_file in $(find . -maxdepth 1 -mindepth 1 -type f -name "*.deb"); do
    tar -cf $deb_file.tar $deb_file
done

