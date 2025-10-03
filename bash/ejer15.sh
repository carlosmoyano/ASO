#!/bin/bash

num=$1

#for ((i=1; i<=10; i++)); do
#	echo "$i * $num = $((i*num))"
#done


echo "Tabla de multiplicar del $num:"
for i in $(seq 1 10); do
    echo "$i x $num = $((i * num))"
done
