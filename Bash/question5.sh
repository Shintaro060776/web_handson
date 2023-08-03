#!/bin/bash

# 1週間の曜日を配列に格納
days=("月曜日" "火曜日" "水曜日" "木曜日" "金曜日" "土曜日" "日曜日")

# 忙しい日の数を初期化
busy_days=0

# 各曜日について忙しいかどうかを入力させる
for day in "${days[@]}"; do
    read -p "今日は$day、忙しいですか？ (yes / no): " response

    # 忙しい場合はカウントを増やす
    if [[ "$response" == "yes" ]]; then
        busy_days=$((busy_days + 1))
    fi
done

# 結果の表示
echo "1週間の間、忙しい日は$busy_days日です。"