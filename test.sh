#!/usr/bin/env bash

blob="
aaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBB
aaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBB
aaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBB
aaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBB
aaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBB
aaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBB
aaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBB
aaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBB
aaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBB
aaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBBaaaaaaaaaaBBBBBBBBBBB
"

bigblob=$(echo $blob $blob)

for i in $(seq 0 20)
do
  echo $i
  for j in $(seq 0 4)
  do
    echo $(( ($i * 5 + $j+1) * ${#bigblob} ))
    echo $bigblob 1>&2
  done
done
