#!/bin/sh
while [ 1 ]
do
	time=$(date +%Y%m%d_%H%M%S)
	7z a /output/$time.7z /input

	sleep 1d
done