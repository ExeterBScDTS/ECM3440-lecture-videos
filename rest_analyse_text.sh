#!/bin/bash

export GOOGLE_APPLICATION_CREDENTIALS="../credentials.json"

curl -s -H "Content-Type: application/json" \
    -H "Authorization: Bearer "$(gcloud auth application-default print-access-token) \
    https://language.googleapis.com/v1/documents:analyzeSyntax \
    -d @script-type-hints.json
