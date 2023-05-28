#!/bin/bash

# Downloading source code
# Leptonica
# RUN git ls-remote ${LEP_REPO_URL} HEAD
git clone ${LEP_REPO_URL} ${LEP_SRC_DIR}
# Tesseract
# RUN git ls-remote ${TES_REPO_URL} HEAD
git clone -b ${TES_REPO_RELEASE_TAG} --depth 1 ${TES_REPO_URL} ${TES_SRC_DIR}
