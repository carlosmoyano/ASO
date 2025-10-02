#!/bin/bash

if [[ $# -ne 2 ]]; then
	echo "Número de parámetros incorrecto"
	exit 1
else
	echo -e "Parámetro 1 -> $1 \nParámetro 2 -> $2"
fi

if [[ -f $1 ]]; then
	echo "$1 es un archivo regular"
else
	echo "$1 no es un archivo regular"
	exit 1
fi

if [[ -d $2 || -f $2 ]]; then
	echo "Error, $2 ya existe como archivo o como directorio"
	exit 1
fi

echo "Todas las restricciones se cumplen. Intentando copiar $1 en $2..."

cp "$1" "$2"
sleep 5

if [[ $? -eq 0 ]]; then
  	echo "Archivo copiado correctamente"
else
	echo "Error al copiar el archivo"
	exit 1
fi

