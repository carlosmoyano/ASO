#!/bin/bash

#Verificamos si el fichero existe
existe() {
    if [[ -f "$1" ]]; then
        echo "El fichero '$1' existe."
        chmod 700 "$1"
        echo "Se han cambiado los permisos a ejecutable solo para el propietario."
    else
        echo "El fichero '$1' NO existe."
    fi
}

# Comprobamos que se haya pasado un parámetro
if [[ $# -eq 0 ]]; then
    echo "Uso: $0 nombre_del_fichero"
    exit 1
fi

# Llamamos a la función pasando el primer parámetro
existe "$1"
