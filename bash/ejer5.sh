#!/bin/bash

read -p "Introduce el primer número: " num1

echo "Introduce el segundo número: "
read num2

echo "La media aritmética de $num1 y $num2 es $(( (num1 + num2) / 2 ))"


#num4=$(((num1+num2)/2)) Se puede hacer el cálculo en el echo o calcularlo fuera y llamar a num4
#echo "$num4"



