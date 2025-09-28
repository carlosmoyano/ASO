#!/bin/bash

# Guardar en fichero el listado de la carpeta etc y que después lo imprima.

ls -lh /etc/ > listado_etc.txt
echo "Fichero de listado generado"

echo "Mostrando fichero listado_etc.txt"
less ./listado_etc.txt

