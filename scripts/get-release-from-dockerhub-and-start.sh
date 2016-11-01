#!bin/bash

set -v

docker pull macthegenius/webapp:release

# Stop and remove container based from macthegenius/webapp:release image
docker rm $(docker stop -t 1 $(docker ps -q --filter="ancestor=macthegenius/webapp:release"))

docker run -itd -p 6500:5000