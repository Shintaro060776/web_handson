#!/bin/bash

read -p "5以上の数値を入力してください" input

if ((input < 5)); then
        echo "入力された数値は、5未満です。プログラムを終了します"
        exit 1
fi

while ((input >= 5)); do
        echo "現在の値は: $input"
        input=$((input - 1))
done
