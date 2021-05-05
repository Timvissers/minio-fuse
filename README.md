# minio fuse

Providing minio URL, bucket name and credentials, it will mount this minio bucket directly in a container

## build

    sudo docker build -t minio-fuse .
    sudo docker tag minio-fuse timv2/minio-fuse:0.0.3
    sudo docker push timv2/minio-fuse:0.0.3

## examples

### k8s

K8s secret containing the minio URL, bucket name and credentials

Example pod using the secret and the build docker image.

As a result, the bucket is mounted in the container in the pod, on /var/s3fs