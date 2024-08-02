# Dockerized prettier application for use @ LibreELEC

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
```
