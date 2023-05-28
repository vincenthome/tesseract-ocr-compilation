#!/bin/bash

# Show version information:
docker exec -it tesseract-ocr tesseract \-v
# List available languages for tesseract engine:
docker exec -it tesseract-ocr tesseract \--list-langs
# Show help message:
# docker exec -it tesseract-ocr tesseract \-h

# Base OCR test
image_url="https://github.com/vincenthome/tesseract-ocr-compilation/blob/master/test-images/problem.tif?raw=true" 
if [ -n "$1" ]; then
    image_url=$1  
fi
docker exec -it tesseract-ocr /bin/bash -c "echo ====; mkdir ./ocr-files/; cd ./ocr-files/; pwd; \
rm phototest.*; echo ====; \
echo downloading test file:; wget -O phototest.tif $image_url;  \
tesseract phototest.tif phototest; \
head -100 phototest.txt; \
echo Compare the text above ^^^ with the source image: \ 
echo $image_url"

# Process and copy files to ./ocr-files/ directory
docker exec -it tesseract-ocr /bin/bash -c "cd ./ocr-files/; tesseract phototest.tif phototest -l eng --psm 1 --oem 2 pdf hocr"
mkdir ./ocr-files/
rm ./ocr-files/*
docker cp tesseract-ocr:/home/ocr-files/ ./
echo "Check results in ./ocr-files directory"
