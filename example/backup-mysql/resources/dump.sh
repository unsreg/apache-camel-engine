#!/bin/bash

DB_NAME="$1"
RESULT_FILE="$2"
TMP_DIR=/tmp
mkdir -p "${TMP_DIR}"
TMP_FILE="${TMP_DIR}"/"${DB_NAME}"_"$(date +%Y-%m-%dT%H.%M.%S)".sql

mysqldump \
  --defaults-extra-file="$PWD"/.my.cnf \
  --verbose \
  --add-drop-database \
  --add-locks \
  --create-options \
  --disable-keys \
  --extended-insert \
  --single-transaction \
  --quick \
  --set-charset \
  --routines \
  --events \
  --triggers \
  --comments \
  --quote-names \
  --order-by-primary \
  --hex-blob \
  --compatible=mysql323 \
  --databases "${DB_NAME}" \
  --result-file="${TMP_FILE}"

mv "${TMP_FILE}" "${RESULT_FILE}"