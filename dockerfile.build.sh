#!/bin/bash
docker build ${RELEASE:+--build-arg=RELEASE=${RELEASE}} -t vincenthome/tesseract-ocr ./
docker images
