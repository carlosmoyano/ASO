#!/bin/bash

read -p "Introduzca primer número: " num1
read -p "Introduzca segundo número: " num2

if [[ $num1 -lt $num2 ]]; then
   echo "El mayor es $num2"
elif [[ $num2 -lt $num1 ]]; then
   echo "El mayor es $num1"
else
   echo "Has introducido dos números iguales"
fi 


