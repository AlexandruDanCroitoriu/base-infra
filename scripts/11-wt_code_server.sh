#!/bin/bash

echo "Removing WT Builder Docker image..."
docker build -t wt-code-server -f dockerfiles/Dockerfile_wt_code_server .
