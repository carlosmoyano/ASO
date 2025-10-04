#!/bin/bash
clear
echo "Listar ruta"
echo "+++++++++++"


if [[ ! -d "$1" ]]; then
	echo "Lo que has pasado no es un directorio"
else 
	for i in "$1"/*; do
		if [[ -f $i ]]; then
			echo " $i --> es un fichero"
		else
			echo " $i --> es un directorio"
		fi
	done
fi
