#!/bin/bash

source ./funciones.sh

main() {
    inicializar_agenda
    while true; do
        imprimir_menu
        read -p "Selecciona una opción: " opcion
        case $opcion in
            1) añadir_contacto ;;
            2) listar_contactos ;;
            3) buscar_contacto ;;
            4) editar_contacto ;;
            5) borrar_contacto ;;
            6) echo "Hasta pronto."; exit 0 ;;
            *) echo "Opción inválida." ;;
        esac
        read -p "Pulsa [Enter] para continuar..." pausa
    done
}

main
