#!/bin/bash

opcion=-1

until [[ $opcion == 0 ]]; do
  clear
  echo "Calculadora básica"
  echo "+++++++++++++++++"
  echo -e "\t 1) Sumar"
  echo -e "\t 2) Restar"
  echo -e "\t 3) Multiplicar"
  echo -e "\t 4) Dividir\n\n"
  echo -e "\t 0) Salir"

  read -p "Seleccione opción: " opcion

  if [[ $opcion != 0 ]]; then
    read -p "Introduzca primer número: " num1
    read -p "Introduzca segundo número: " num2
    case $opcion in
        1)
          echo "La suma de ambos números es $((num1 + num2))"
          ;;
        2)
          echo "La resta de ambos números es $((num1 - num2))"
          ;;
        3)
          echo "La multiplicación de ambos números es $((num1 * num2))"
          ;;
        4) 
          if [[ $num2 == 0 ]]; then
            echo "Error: no se puede dividir por 0"
          else
            echo "La división de ambos números es $((num1 / num2))"
          fi
          ;;
        *)
          echo "Opción no válida"
          ;;
    esac
    read -p "Presione Enter para continuar..."
  else
    echo "Has elegido salir del programa"
    exit 0
  fi
done
