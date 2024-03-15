#!/bin/sh

function resolve_addr() {
    nslookup -type=a ${1}|grep "Address: "|sed -e 's/Address:\ //'|tail -1
}

export GOSSIP_ADDR=$(resolve_addr ${KOYEB_SERVICE_PRIVATE_DOMAIN})
echo "GOSSIP_ADDR=${GOSSIP_ADDR}"

/bin/mimir \
    -config.file=/config.yml \
    -config.expand-env=true
