#!/bin/bash

chmod -R 777 projects/

./scripts/2-build_all_images.sh
./scripts/1-compose_up.sh