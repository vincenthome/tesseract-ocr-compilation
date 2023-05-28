#!/bin/bash

docker exec -it tesseract-ocr sh ./scripts/build_deb_pkg.sh
mkdir ./pkg/
rm ./pkg/*
docker cp tesseract-ocr:/home/pkg/ ./
echo "Check ./pkg directory"
