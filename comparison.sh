#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Потрібно ввести два числових параметри."
    exit 1
fi

par1=$1
par2=$2

start_time=$(date +%s.%N)

if [ "$par1" -gt "$par2" ]; then
    echo "1-й параметр більше за 2-й."
    echo "Список псевдонімів системи:"
    alias
else
    echo "1-й параметр не більше за 2-й."
    echo "Розмір файлу скрипта \"$0\":"

    script_size=$(wc -c < "$0")
    echo "$script_size байт"
fi

end_time=$(date +%s.%N)

execution_time=$(echo "$end_time - $start_time" | bc)

echo "Час виконання скрипту: $execution_time секунд"

exit 0

