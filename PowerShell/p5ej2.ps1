clear
Write-Host " **************************************"
Write-Host " >>>>>>>>> LEER FICHERO .CSV<<<<<<<<<<<"
Write-Host " **************************************`n`n"

$fichImportado = Import-Csv usuarios.csv

Write-Host "NOMBRE`t`t| APELLIDOS `t`t    | GRUPO"
Write-Host "-------------------------------------------------"
foreach ($usuario in $fichImportado) {
    Write-Host "$($usuario.nombre)`t`t|$($usuario.apellidos)`t`t`t|$($usuario.grupo)"

}