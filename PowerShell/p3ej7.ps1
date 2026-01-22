Write-Host " ***************************************************"
Write-Host " >>>>>>>>> CONTRASEÑA <<<<<<<<<<<"
Write-Host " ***************************************************"

$cadena = "contraseña"

$cadenaUsuario = Read-Host "Introduce tu contraseña: "

if ($cadena -ieq $cadenaUsuario) {
    Write-Host " Tu contraseña es igual a la contraseña guardada"
} else {
    Write-Host " Tu contraseña no es igual a la contraseña guardada"
}