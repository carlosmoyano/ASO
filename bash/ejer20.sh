#!/bin/bash
clear
echo "Números primos"
echo "++++++++++++++"


for ((i=2; i<$1; i++)); do
    if [[ $(( $1 % i )) -eq 0 ]]; then
        echo "$1 no es primo"
        exit
    fi
done
echo "$1 es primo"
