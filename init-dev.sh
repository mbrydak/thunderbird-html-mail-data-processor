#!/bin/bash
CONTAINER_NAME="local.dev/thunderbird-html-mail-data-processor:latest"
docker build . -f devel.Dockerfile -t "${CONTAINER_NAME}"
docker run -d -it --mount type=bind,source="$(pwd)"/app/input-files,target=/app/input-files,readonly --mount type=bind,source=$(pwd)/app/app.py,target=/app/app.py "${CONTAINER_NAME}" /bin/bash