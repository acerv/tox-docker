# Introduction

Docker image to run tox with multiple python versions.

This is an image based on **ubuntu-18.04** with a pre-installed version of **tox**.
By using the ``TOX_VERSION`` environment variable, it's possible to select the tool version.

# Running tox

An example command to use ``sawkita/tox`` image is the following:

    # pull docker image
    docker pull sawkita/tox:latest
    
    # run a container
    docker container run \
        --mount src=$PWD,target=/src,type=bind \ # mount python source code in /src
        --interactive \                          # use interactive mode
        --tty \                                  # use pseudo-terminal
        --rm \                                   # remove the container after testing
        sawkita/tox:latest \
        /bin/bash -c "cd /src && tox"            # run tox inside /src

# Python versions

Supported python versions are the following:

* python2.3
* python2.4
* python2.5
* python2.6
* python2.7
* python3.1
* python3.2
* python3.3
* python3.4
* python3.5
* python3.6
* python3.7
* python3.8
