#!/usr/bin/bash

sizes=("$@")
for size in ${sizes[@]}; do
    echo -ne "$size:\t"
    for x in {0..0}
    do
        echo -n "$x "
        mkdir -p tests/$size
        ./test_gen.py $size > tests/$size/$x.in
    done
    echo -e "\tdone"
done

