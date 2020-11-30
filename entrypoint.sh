#!/usr/bin/env bash

env
java -Dwaiter.application-names="$INPUT_WAITLIST" -jar /work/waiter.jar   && echo ::set-output name=success::true || echo ::set-output name=success::false
echo ::set-output name=time::$(date)
