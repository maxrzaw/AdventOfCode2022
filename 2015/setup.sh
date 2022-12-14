#!/bin/bash

# Get the day, I made it the second argument so I won't have to copy the cookie
day=$1

# make the directory
mkdir -p ./src/day$day
cargo new day$day

# use the provided session cookie and request the input file
trimmed_day=$(echo $day | sed 's/^0*//')
curl -s -b "session=${AOC_SESSION_COOKIE}" https://adventofcode.com/2015/day/${trimmed_day}/input -o ./day${day}/input.txt

cd day${day}/

echo You are all set up for day ${day}! Have fun!
