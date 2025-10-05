#!/bin/bash
Date:$(Date)

START_TAME=$(date +%s)

sleep 10 &

END_TIME=$(date +%s)

TOTAL_TIME=$($END_TIME - $START_TIME)

echo "timpstamp executed: $TOTAL_TIME seconds"
