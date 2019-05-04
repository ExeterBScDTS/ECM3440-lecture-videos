#!/bin/bash

export GOOGLE_APPLICATION_CREDENTIALS="../credentials.json"

curl -s -H "Content-Type: application/json" \
    -H "Authorization: Bearer "$(gcloud auth application-default print-access-token) \
    https://speech.googleapis.com/v1/speech:longrunningrecognize \
    -d @speech-type-hints.json
