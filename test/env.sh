#!/bin/bash

export BENCHMARK_TOOL='wrk' # wrk | ab     wrk to go-wrk and ab to apache benchmark
export NUM_PARALLEL=2
export NUM_TARGET_REQUEST=10 # ab tool only
export SEC_DURATION_TEST=60 # able to be zero on ab tool only
export MS_TIMEOUT_REQUEST=20000
export SEC_TIMEOUT_REQUEST="$(($MS_TIMEOUT_REQUEST / 1000))"
export BASIC_AUTH="Authorization: Basic YXBwLmNsaWVudGU6ajNXbU5EZGVocHV0QXJtQ3gzQ1lKTEphU2NnWnFxa2pnOHZGbmpMdmhRTUo3Sld1QmE0V01wSGZiUFJyUDN6R1pFZFhOQWhXZkZnY2ZQZ3RRYVpkYXpq"
export ENV_URI='http://localhost.com/api/v1/1/'
export USER_AGENT="User-Agent: Test Massive Requests $BENCHMARK_TOOL"
