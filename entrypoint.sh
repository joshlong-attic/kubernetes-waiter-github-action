#!/bin/sh -l

echo "trying $1 "
java -jar waiter.jar "$INPUT_SERVICE_PRINCIPAL_PASSWORD" && echo ::set-output name=success::true || echo ::set-output name=success::false
echo ::set-output name=time::$(date)
