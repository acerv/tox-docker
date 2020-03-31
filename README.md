# Introduction

Docker image to run tox with multiple python versions. Available images
are the following:

* **sawkita/tox:2** - python2 only
* **sawkita/tox:3** - python3 only
* **sawkita/tox:all** - both python 2 and 3

This is an image based on **ubuntu-18.04** with a pre-installed version of **tox**.
By using the ``TOX_VERSION`` environment variable, it's possible to select the tool version.

Check below for supported python versions.

# Running tox

An example command to use ``sawkita/tox`` image is the following:

    # pull all python versions
    docker pull sawkita/tox:all
    
    # pull python2 only image
    docker pull sawkita/tox:2
    
    # pull python3 only image
    docker pull sawkita/tox:3
    
    # run a container
    docker container run \
        --mount src=$PWD,target=/src,type=bind \ # mount python source code in /src
        --interactive \                          # use interactive mode
        --tty \                                  # use pseudo-terminal
        --rm \                                   # remove the container after testing
        sawkita/tox:all \                        # 2 or 3 can be used
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
* python3.9
