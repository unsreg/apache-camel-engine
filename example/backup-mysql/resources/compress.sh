#!/bin/bash

TMP_DIR=/tmp/mysqldump
TMP_FILE="${TMP_DIR}"/"$(date +%Y-%m-%dT%H.%M.%S)"_"$1".sql
DST_DIR=$(dirname "$2")
DST_FILE=$(basename "$2")

mkdir -p "${TMP_DIR}"

gzip -5 --keep "${TMP_FILE}"

mkdir -p "${DST_DIR}"
mv "${TMP_FILE}".gz "${DST_FILE}"