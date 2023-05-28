#!/bin/bash

docker run -d -p 4022:22 --name tesseract-ocr vincenthome/tesseract-ocr
docker ps