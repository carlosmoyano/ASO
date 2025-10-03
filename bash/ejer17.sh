#!/bin/bash
clear
echo "Sumador de números. Para parar introduzca el valor cero [0]"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

suma=0
valor=1

#while [[$valor != 0 ]]; do  --> también funciona.
while [[ $valor -ne 0 ]] ; do

    	read -p "Valor a suamr --> " valor
	((suma += valor))
done
echo "La suma de los valores introducidos ha sido $suma"
echo "Programa terminado"
