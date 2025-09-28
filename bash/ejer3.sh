#!/bin/bash

# modificado ejer2.sh para que muestre el número de líneas y de palabras.

ls -lh /etc/ > listado_etc.txt
echo "Fichero de listado generado"

echo "Mostrando fichero listado_etc.txt"
cat ./listado_etc.txt

#la opción -e hace que se interprete el \n. Si no se pone lo muestra literalmente en la salida. 
echo -e "El número de líneas es $(wc -l < listado_etc.txt).\nEl número de palabras es $(wc -w < listado_etc.txt) "

