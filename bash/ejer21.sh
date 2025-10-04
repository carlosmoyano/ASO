#!/bin/bash
clear
echo "Adivinar número"
echo "++++++++++++++"


num=$((RANDOM % 100 +1))
candidato=-1

read -p "Introduce un número entre 1 y 100: " candidato

if [[ $candidato -lt 1 || $candidato -gt 100 ]]; then
	echo "Incorrecto. Debe ser entre 1 y 100. Al tercer error llamo a hacienda para que te metan un cuerno que flipas."
	exit 0
else

	while [[ $candidato != $num && $candidato != 0 ]]; do 

		if [[ $candidato -lt $num ]]; then
	        	echo "No. Estás por debajo"
	    	elif [[ $candidato -gt $num ]]; then
	        	echo "No. Estś por encima"
	    	fi
	    	read -p "¿Núevo número? (0 para salir): " candidato
	done

	if [[ $candidato == $num ]]; then
	    echo "Enhorabuena. Lo has adivinado"
	else
	    echo "Has salido del juego."
	fi
fi
