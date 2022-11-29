#!/bin/bash

# CEPH_POOL_NAME/CEPH_IMAGE_NAME
if [ -z "$CEPH_IMAGE_SPEC" ]; then
    echo "CEPH_IMAGE_SPEC is undefined"
    exit 1
fi
if [ -z "$CEPH_MON_HOST" ]; then
    echo "CEPH_MON_HOST is undefined"
    exit 1
fi
if [ -z "$CEPH_USER" ]; then
    echo "CEPH_USER is undefined"
    exit 1
fi
if [ -z "$CEPH_USER_KEY" ]; then
    echo "CEPH_USER_KEY is undefined"
    exit 1
fi
if [ -z "$KEEPALIVED_VIP" ]; then
    echo "KEEPALIVED_VIP is undefined"
    exit 1
fi
if [ -z "$KEEPALIVED_ROLE" ]; then
    echo "KEEPALIVED_ROLE is undefined"
    exit 1
fi

exec /usr/bin/runsvdir -P /etc/service
