#!/bin/bash

suma=0
echo "Suma con bucle for "
for ((i=1; i<=1000; i++)); do
	((suma+=i))
done
echo "La suma es $suma"

suma=0
contador=1
echo "Suma con bucle while "
while [[ $contador -le 1000 ]];do
	((suma +=contador))
	((contador++))
done
echo "La suma es $suma"


contador=1
echo "Suma con until"
until [[ $contador -le 1000 ]]; do 
	((suma += contador))
	((contador++))
done
echo "La suma es $suma"

