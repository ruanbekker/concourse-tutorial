#!/bin/sh

mkdir -p some-files
echo "$(cat /proc/sys/kernel/random/uuid)" > some-files/data1.txt
echo "$(cat /proc/sys/kernel/random/uuid)" > some-files/data2.txt
echo "$(cat /proc/sys/kernel/random/uuid)" > some-files/data3.txt
echo "$(cat /proc/sys/kernel/random/uuid)" > some-files/data4.txt

ls some-files/*
