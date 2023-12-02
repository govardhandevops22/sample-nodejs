#!/bin/bash

get_primes() {
    local start=$1
    local end=$2

    for ((num=start; num<=end; num++)); do
        is_prime=true

        for ((divisor=2; divisor<num; divisor++)); do
            if ((num % divisor == 0)); then
                is_prime=false
                break
            fi
        done

        if $is_prime && ((num > 1)); then
            echo -n "$num "
        fi
    done

    echo ""
}


if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <start> <end>"
    exit 1
fi

start=$1
end=$2


get_primes "$start" "$end"
