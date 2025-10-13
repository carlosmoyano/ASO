FICHERO="agenda.csv"

inicializar_agenda() {
    if [[ ! -f "$FICHERO" ]]; then
        echo "Nombre;Teléfono;Email" > "$FICHERO"
    fi
}

validar_telefono() {
    [[ $1 =~ ^[0-9]{9}$ ]]
}


validar_email() {
    [[ $1 =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ ]]
}


añadir_contacto() {
    clear
    echo "=== Añadir contacto ==="
    read -p "Nombre completo: " nombre

    while true; do
        read -p "Teléfono (9 dígitos): " telefono
        if validar_telefono "$telefono"; then
            break
        else
            echo "Teléfono inválido. Debe contener 9 dígitos numéricos."
        fi
    done

    while true; do
        read -p "Correo electrónico: " email
        if validar_email "$email"; then
            break
        else
            echo "Correo inválido. Ejemplo válido: usuario@dominio.com"
        fi
    done

    echo "$nombre;$telefono;$email" >> "$FICHERO"
    echo "Contacto añadido correctamente."
}

listar_contactos() {
    clear
    echo "=== Listado de contactos ==="
    column -t -s ";" "$FICHERO"
}


buscar_contacto() {
    clear
    read -p "Introduce nombre, teléfono o email a buscar: " valor
    echo "=== Resultados de búsqueda ==="
    grep -i "$valor" "$FICHERO" | column -t -s ";" || echo "No se encontraron coincidencias."
}


borrar_contacto() {
    clear
    read -p "Introduce el nombre (o parte) del contacto a borrar: " valor
    echo "=== Coincidencias encontradas ==="
    grep -ni "$valor" "$FICHERO" | column -t -s ";"

    read -p "Número de línea del contacto a borrar: " linea
    if [[ $linea -le 1 ]]; then
        echo "No puedes borrar la cabecera."
        return
    fi

    sed -i "${linea}d" "$FICHERO"
    echo "Contacto eliminado correctamente."
}


editar_contacto() {
    clear
    read -p "Introduce el nombre del contacto a editar: " valor

    echo "=== Coincidencias encontradas ==="
    grep -ni "$valor" "$FICHERO"

    read -p "Número de línea del contacto a editar: " linea

    if [[ $linea -le 1 ]]; then
        echo "No puedes modificar la cabecera."
        return
    fi

    # Leer la línea completa
    registro=$(sed -n "${linea}p" "$FICHERO")

    echo "Editando: $registro"
    read -p "Nuevo registro completo (Nombre;Teléfono;Email): " nuevo

    # Mantener el registro antiguo si se deja vacío
    [[ -z "$nuevo" ]] && nuevo="$registro"

    # Reemplazar la línea en el fichero
    sed -i "${linea}s/.*/$nuevo/" "$FICHERO" #Sustituye la linea X toda entera por $nuevo
    echo "Contacto actualizado correctamente."
}


imprimir_menu() {    clear
    echo "===== AGENDA TELEFÓNICA ====="
    echo "1) Añadir contacto"
    echo "2) Listar contactos"
    echo "3) Buscar contacto"
    echo "4) Editar contacto"
    echo "5) Borrar contacto"
    echo "6) Salir"
    echo "============================="
}
