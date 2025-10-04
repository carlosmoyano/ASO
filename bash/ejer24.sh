#!/bin/bash
clear
echo "Listar ruta"
echo "+++++++++++"


totalficheros=0
totaldirectorios=0

if [[ ! -d "$1" ]]; then
	echo "Lo que has pasado no es un directorio"
else 
	for i in "$1"/*; do
		if [[ -f $i ]]; then
			echo " $i --> es un fichero"
			((totalficheros++))
		else
			echo " $i --> es un directorio"
			((totaldirectorios++))
		fi
	done
	echo -e "\n\nTotal de ficheros --> $totalficheros \nTotal directorios --> $totaldirectorios "
fi
