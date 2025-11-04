#!/usr/bin/env bash

set -euo pipefail

POSTFIX=$(date +%Y%m%d%H%M%S)
aws s3 mb s3://my-test-bucket-${POSTFIX}
# Upload file to the bucket
aws s3 cp test.txt s3://my-test-bucket-${POSTFIX}/
