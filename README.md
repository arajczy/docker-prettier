# [Dockerized prettier application for use @ LibreELEC](https://github.com/arajczy/docker-prettier)

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/arajczy/prettier/latest?logo=docker)
![Docker Pulls](https://img.shields.io/docker/pulls/arajczy/prettier?logo=docker)
[![GitHub License](https://img.shields.io/github/license/arajczy/docker-prettier?logo=github&color=750014)](https://github.com/arajczy/docker-prettier/blob/trunk/LICENCE)
[![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/arajczy/docker-prettier/build-and-publish.yml?logo=github)](https://github.com/arajczy/docker-prettier/pkgs/container/prettier)
[![GitHub issues](https://img.shields.io/github/issues/arajczy/docker-prettier?logo=github)](https://github.com/arajczy/docker-prettier/issues/new/choose)

## Usage

1.  Pull the image from registry

    ```shell
    pull arajczy/prettier
    ```

2.  run the container

    ```shell
    docker run -i --rm -v $(pwd):/data arajczy/prettier
    ```

## Install dockerized prettier application @ LibreELEC

1.  Pull the image

    ```shell
    pull arajczy/prettier
    ```

2.  Add application script

    ```shell
    mkdir -p /storage/bin
    echo '#!/bin/sh' > /storage/bin/prettier
    echo 'docker docker run -i --rm -v `pwd`:/data arajczy/prettier "$@"' >> /storage/bin/prettier
    echo 'export PATH=/storage/bin:$PATH' >> /storage/.profile
    ```

3.  Source `.profile`

    ```shell
    source /storage/.profile
    ```

4.  Run the application

    ```shell
    prettier --version
    ```
