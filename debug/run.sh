#!/usr/bin/env bash

set -euo pipefail

aws s3api head-bucket --bucket my-test-bucket-12345 2>/dev/null || aws s3 mb s3://my-test-bucket-12345
aws s3 cp test.txt s3://my-test-bucket-12345/ 

# POSTFIX=$(date +%Y%m%d%H%M%S)
# aws s3 mb s3://my-test-bucket-${POSTFIX}
# aws s3 cp test.txt s3://my-test-bucket-${POSTFIX}/
