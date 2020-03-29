#!/bin/bash

# key: set of python packages
# value: default python version
declare -A versions=(
    [all]="python3.8"
    [2]="python2.7"
    [3]="python3.8"
)

for version in "${!versions[@]}"; do
    dir="${version}"
    rm -rf ${dir}
    mkdir ${dir}
    sed -r \
        -e "s!%%PYTHON_PKG%%!\$\{PYTHON_$version\_PKG\}!;" \
        -e "s!%%PYTHON_DEFAULT_VERSION%%!${versions[$version]}!;" \
        Dockerfile.template > $dir/Dockerfile
done
