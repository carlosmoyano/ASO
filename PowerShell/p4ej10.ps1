clear
Write-Host " *********************************************"
Write-Host " >>>>>>>>>>> MENÚ OPCIONES <<<<<<<<<<<<<<<<<<<"
Write-Host " *********************************************"

$opcion=" "

while ($opcion -notlike "x") {
    Write-Host " a - Crear carpeta"
    Write-Host " b - Crear fichero nuevo"
    Write-Host " c - Cambiar el nombre de un fichero o carpeta"
    Write-Host " d - Borrar un archivo o carpeta"
    Write-Host " e - Verificar si existe un fichero o carpeta"
    Write-Host " f - Mostrar el contenido de un directorio"
    Write-Host " g - Mostrar hora y fecha actuales"
    Write-Host " x - Salir"

    $opcion = Read-Host "Opción elegida: "

   <# if ($opcion -ieq "x" ) {
        Write-Host "Has elegido salir"
        break
    } else {
        Write-Host "Has elegido la opcion $opcion"
    }#>

    switch ($opcion) {
        "a" {
            $carpeta = Read-Host "¿Nombre de la carpeta?: "
            if (Test-Path $carpeta -PathType Container){
                Write-Host "La carpeta no se puede crear. Ya existe`n`n"
            } else {
                New-Item $carpeta -ItemType directory
                Write-Host "`n`n "
            }    
        }
        #*fin opcion a
        "b" {
            $fichero = Read-Host "¿Nombre del fichero?: "
            if (Test-Path $fichero){
                Write-Host "El fichero no se puede crear. Ya existe`n`n"
            } else {
                New-Item $fichero -ItemType file
                Write-Host "`n`n "
            }         
        }
        #*fin opcion b
        "c" {
            $elemRenombrar = Read-Host "¿Nombre del fichero o carpeta a renombrar?: "
            $nuevoNombre =  Read-Host "¿Nuevo nombre?: "
            
            if (Test-Path $elemRenombrar) {
                Rename-Item $elemRenombrar $nuevoNombre
                Write-Host "Nombre cambiado satisfactoriamente."
            } else {
                Write-Host "$elemRenombrar no se puede renombrar porque no existe en el directorio actual "
            }   
        }
        #*fin opcion c
        "d" {
            $elemBorrar = Read-Host "¿Nombre del archivo o carpeta a borrar?: "
                        
            if (Test-Path $elemBorrar) {
                Remove-Item $elemBorrar
                Write-Host "Elemento borrado satisfactoriamente."
            } else {
                Write-Host "$elemBorrar no se puede eliminar porque no existe en el directorio actual "
            }      
        }
        #*fin opcion d
        "e" {
            $elemVerificar = Read-Host "¿Nombre del archivo o carpeta a verificar?: "
                        
            if (Test-Path $elemVerificar) {
                Write-Host "El elemento $elemVerificar existe en el directorio actual."
            } else {
                Write-Host "El elemento $elemVerificar no existe en el directorio actual. "
            }          
        }
        #*fin opcion e
        "f" {
            $ruta = Read-Host "Ruta directorio a listar [Ruta acabada en \]: "; dir $ruta
        }
        #*fin opcion f
        "g" {
            Get-Date -Format "dd/MM/yyyy - HH:mm:ss "
            #Write-Host "`nFecha y hora actual => $(Get-Date)`n "  
        }
        #*fin opcion g
        "x" {
            Write-Host "FIN DEL PROGRAMA"
            $opcion = "x"
        }
        default {
            Write-Host "Opción elegida incorrecta"
        }

    }#switch

}