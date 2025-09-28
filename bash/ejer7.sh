#!/bin/bash

# Si la cadena pasada está vacía el usuario da error e informa de como usarlo.
if [ -z "$1" ]; then
    echo "Páso de parámetro incorrecto"
    echo "Uso correcto: $0 <directorio>"
    exit 1
fi

# Comprobamos  que el parámetro sea un directorio válido
if [ ! -d "$1" ]; then
    echo "Error: $1 no es un directorio válido."
    exit 1
fi

# Obtener fecha en formato yyyy-mm-dd
fecha=$(date +%F)

# Obtener solo el nombre del directorio sin la ruta
nombre_dir=$(basename "$1")

# Nombre final del archivo
archivo="${fecha}-${nombre_dir}.tar.gz"

# Crear archivo tar.gz
tar -czf "$archivo" -C "$(dirname "$1")" "$nombre_dir"

echo "Archivo creado: $archivo"




