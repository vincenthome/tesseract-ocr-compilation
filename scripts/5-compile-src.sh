#!/bin/bash

docker exec -it tesseract-ocr sh scripts/compile_leptonica.sh && \
docker exec -it tesseract-ocr sh scripts/compile_tesseract.sh && \
docker exec -it tesseract-ocr tesseract \-v
