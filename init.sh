#!/bin/bash
CONTAINER_NAME="local.dev/thunderbird-html-mail-data-processor:latest"
docker build . -f Dockerfile -t "${CONTAINER_NAME}"