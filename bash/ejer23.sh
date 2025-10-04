#!/bin/bash
clear
echo "Listar ruta-bis"
echo "+++++++++++++++"

if [[ ! -d "$1" ]]; then
    echo "La ruta '$1' no es un directorio válido."
    exit 1
else
    for i in "$1"/*; do
        if [[ -f "$i" ]]; then
            echo "$i --> es un fichero regular"
        elif [[ -d "$i" ]]; then
            echo "$i --> es un directorio"
        elif [[ -L "$i" ]]; then
            echo "$i --> es un enlace simbólico"
        elif [[ -b "$i" ]]; then
            echo "$i --> es un archivo especial de bloque"
        elif [[ -c "$i" ]]; then
            echo "$i --> es un archivo especial de carácter"
        else
            echo "$i --> tipo desconocido"
        fi
    done
fi
