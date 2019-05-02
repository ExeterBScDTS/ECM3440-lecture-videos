#!/bin/bash

echo "fetching ${1}"

export GOOGLE_APPLICATION_CREDENTIALS="/home/mike/Downloads/IoC-Summer-School-256f4912409c.json"

curl -H "Authorization: Bearer "$(gcloud auth application-default print-access-token) \
     -H "Content-Type: application/json; charset=utf-8" \
          "https://speech.googleapis.com/v1/operations/${1}"