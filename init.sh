#!/bin/bash
docker build . -f Dockerfile -t local.dev/thunderbird-html-mail-data-processor:latest && docker scan local.dev/thunderbird-html-mail-data-processor:latest