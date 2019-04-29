#!/bin/sh -e

# Running this script requires Docker installed locally.
# See https://docs.docker.com/install/

echo "FROM mysql:8
WORKDIR /app" > Dockerfile

docker build -t mysql-generator .

docker run --rm -v $(pwd):/app mysql-generator ./generate-timezones.sh

rm Dockerfile
docker rmi mysql-generator > /dev/null

echo "timezones.sql generated successfully."
