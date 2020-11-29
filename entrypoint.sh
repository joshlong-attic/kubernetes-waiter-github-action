#!/bin/sh -l

java -jar waiter.jar
echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
