#!/bin/bash
for package_dir in $(find . -maxdepth 1 -mindepth 1 -type d -not -name ".*"); do
    cd $package_dir
    ./makedeb.sh
    mv *.deb ..
    cd ..
done

