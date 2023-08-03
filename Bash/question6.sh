#!/bin/bash

read -p "数値を入力してください" input

if ((input < 100)); then
        echo "100未満です"
elif ((input < 1000)); then
        echo "100以上1000未満です"
else
        echo "1000以上です"
fi