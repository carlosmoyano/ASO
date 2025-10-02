#!/bin/bash

while true; do

	echo -e "\n\n===== CUTREFÓNICA ====="
	echo "1) Añadir contacto"
	echo "2) Buscar contacto"
	echo "3) Listar agenda"
	echo "4) Ordenar agenda"
	echo "5) Borrarlo todo"
	echo "6) Salir"
    	read -p "Elige una opción: " opcion

	case $opcion in
		1)
		   clear
		   read -p "Nombre completo: " nombre
		   read -p "Dirección: " direccion
		   read -p "Teléfono: " telefono
		   echo "$nombre|$direccion|$telefono" >> "$1"
		   ;;
		2)
		   clear
		   read -p "Escribe nombre, dirección o teléfono a buscar: " valor
		   grep -i $valor $1
		   ;;
		3)
		   clear
		   cat $1
		   ;;
		4)
		   clear
		   sort -t"|" -k1 "$1"
 		   ;;
		5)
		   read -p "¿Seguro que quieres borrarlo? [Y] --> Si Cualquier otra cosa --> NO  " confirmacion
		   if [[ $confirmacion == "Y" ]]; then
			> "$1"
			echo "Agenda borrada"
		   fi
		   ;;
		6)
		   echo "Hasta la próxima"
		   exit 0
		   ;;
		*)
		   echo "Opción inválida"
		   ;;
	esac
done
