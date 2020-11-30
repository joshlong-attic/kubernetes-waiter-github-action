#!/usr/bin/env bash

echo "------------------------------------------------------------"
cat ~/.kube/config | grep -v token  | grep -v certifi
echo "------------------------------------------------------------"
cat ${GITHUB_WORKSPACE}/.kube/config | grep -v token  | grep -v certifi

env

cd $GITHUB_WORKSPACE && ls -la && find .

java -Dwaiter.application-names="$INPUT_WAITLIST" -jar /work/waiter.jar   && echo ::set-output name=success::true || echo ::set-output name=success::false
echo ::set-output name=time::$(date)
