#!/bin/bash

count=5

until [ $count -lt 1 ]; do
        echo $count
        count=$((count - 1))
done