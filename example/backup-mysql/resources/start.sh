#!/bin/bash

DB_NAME=artem_serg_bd
RESULT_FILE="${DB_NAME}"_"$(date +%Y-%m-%dT%H.%M.%S)"

sh dump.sh ${DB_NAME} /var/"${RESULT_FILE}"