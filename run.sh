#!/bin/sh

set -e

echo "$MINIO_ACCESS_KEY:$MINIO_SECRET_KEY" > passwd && chmod 600 passwd
s3fs "$MINIO_BUCKET_NAME" "$MNT_POINT" -o passwd_file=passwd -o url=$MINIO_URL -o use_path_request_style
