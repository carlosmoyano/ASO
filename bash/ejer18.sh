#!/bin/bash
clear
echo "Pirámide de números"
echo "+++++++++++++++++++"

read -p "¿De que cuántas alturas quieres la pirámide? " filas

for ((i=1; i<=filas; i++)); do
    for ((j=1; j<=i; j++)); do
        echo -n "$j"
    done
    echo ""  
done

