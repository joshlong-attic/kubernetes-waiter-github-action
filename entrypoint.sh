#!/usr/bin/env bash

echo "Inside the Kubernetes Waiter"
KDIR=$HOME/.kube/
mkdir -p $KDIR
echo $INPUT_KUBECONFIG | base64 -d > ${KDIR}/config
java -Dwaiter.application-names="$INPUT_WAITLIST" -jar /work/waiter.jar && echo ::set-output name=success::true || echo ::set-output name=success::false
echo ::set-output name=time::$(date)
