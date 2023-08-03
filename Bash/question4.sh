#!/bin/bash

current_hour=$(date +"%H")

if [ $current_hour -lt 12 ]; then
        time_period="午前"
else
        time_period="午後"
fi

echo "現在は、$time_periodです"