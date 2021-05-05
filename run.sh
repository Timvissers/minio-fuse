#!/bin/sh

set -e

echo "Setting credentials"
echo "$MINIO_ACCESS_KEY:$MINIO_SECRET_KEY" > passwd && chmod 600 passwd
echo "starting s3fs"
mkdir -p "$MNT_POINT/$MINIO_BUCKET_NAME"
s3fs "$MINIO_BUCKET_NAME" "$MNT_POINT/$MINIO_BUCKET_NAME" -o passwd_file=passwd -o url=$MINIO_URL -o use_path_request_style
echo "s3fs running"

mkdir -p "$MNT_POINT/$MINIO_BUCKET_NAME/1111"
echo "some log file\nentries" > "$MNT_POINT/$MINIO_BUCKET_NAME/1111/cdata.logs"

sleep infinity