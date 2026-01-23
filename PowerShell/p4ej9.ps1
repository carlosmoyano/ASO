clear
Write-Host " *********************************************"
Write-Host " >>>>>>>>>> ADIVINAR ONTRASEÑA      <<<<<<<<<<"
Write-Host " *********************************************"

$cadena = "contraseña"
$contador = 0
$intento = ""

while ($true) {
    $contador += 1
    $intento = Read-Host "Introduce una cadena: "

    if ($intento -eq $cadena) {
        Write-Host "Enhora buena lo has conseguido."
        break
    } else {
       Write-Host "Contraseña incorrecta. Inténtalo de nuevo." 
    }
}