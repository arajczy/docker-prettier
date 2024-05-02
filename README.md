# Dockerized prettier application for use in LibreELEC

## Usage

`pull arajczy/prettier`

`docker run -i --rm -v $(pwd):/data arajczy/prettier`

## Install dockerized prettier as application

```shell
pull arajczy/prettier

mkdir -p /storage/bin
echo '#!/bin/sh' > /storage/bin/prettier
echo 'docker docker run -i --rm -v `pwd`:/data arajczy/prettier "$@"' >> /storage/bin/prettier
echo 'export PATH=/storage/bin:$PATH' >> /storage/.profile

source /storage/.profile

prettier --version
```

