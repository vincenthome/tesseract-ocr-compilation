#!/bin/bash

# Show version information:
echo ====
echo 'Tesseract-ocr version information'
docker exec -it tesseract-ocr tesseract \-v
# List available languages for tesseract engine:
echo ====
echo 'List available languages'
docker exec -it tesseract-ocr tesseract \--list-langs
# Show help message:
echo ====
echo 'Show help message'
docker exec -it tesseract-ocr tesseract \-h

