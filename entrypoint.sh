#!/bin/sh -l

echo "trying $1 "
java -jar waiter.jar "$1" && echo ::set-output name=success::true || echo ::set-output name=success::false
echo ::set-output name=time::$(date)
