#!/usr/bin/env bash


java -jar /work/waiter.jar "$INPUT_WAITLIST" && echo ::set-output name=success::true || echo ::set-output name=success::false
echo ::set-output name=time::$(date)
