#!/bin/bash

num=$((RANDOM % 100))

read -p "0から99までの数値を入力してください: " input

while [ $input -ne $num ]; do
    if [ $input -gt $num ]; then
        echo "入力された値は乱数より大きいです。"
    else
        echo "入力された値は乱数より小さいです。"
    fi

    read -p "もう一度0から99までの数値を入力してください: " input
done

echo "正解です！入力された値と乱数は $num でした。"