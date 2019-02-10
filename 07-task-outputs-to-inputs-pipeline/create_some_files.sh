#!/bin/sh

mkdir -p some-files
echo "$(cat /proc/sys/kernel/random/uuid)" > some-files/file1.txt
echo "$(cat /proc/sys/kernel/random/uuid)" > some-files/file2.txt
echo "$(cat /proc/sys/kernel/random/uuid)" > some-files/file3.txt
echo "$(cat /proc/sys/kernel/random/uuid)" > some-files/file4.txt

ls some-files/*
