#!/bin/bash

export GOOGLE_APPLICATION_CREDENTIALS="/home/mike/Downloads/IoC-Summer-School-256f4912409c.json"

curl -s -H "Content-Type: application/json" \
    -H "Authorization: Bearer "$(gcloud auth application-default print-access-token) \
    https://language.googleapis.com/v1beta2/documents:analyzeSyntax \
    -d @script-type-hints.json
