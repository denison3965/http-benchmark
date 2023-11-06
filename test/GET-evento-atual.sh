#!/bin/bash

source "$(dirname "$0")/env.sh"

API=$ENV_URI'your/resource/path'

if [ "$BENCHMARK_TOOL" == "ab" ]; then
    ab \
    -H "$BASIC_AUTH" \
    -H "$USER_AGENT" \
    -s $SEC_TIMEOUT_REQUEST \
    -n $NUM_TARGET_REQUEST \
    -m 'GET' \
    -t $SEC_DURATION_TEST \
    $API
else
    go-wrk \
    -c $NUM_PARALLEL \
    -d $SEC_DURATION_TEST \
    -T $MS_TIMEOUT_REQUEST \
    -M 'GET' \
    -H "$BASIC_AUTH" \
    -H "$USER_AGENT" \
    $API
fi
