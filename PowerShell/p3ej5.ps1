Write-Host " ***************************************************"
Write-Host " >>>>>>>>> Localizador ficheros/carpetas <<<<<<<<<<<"
Write-Host " ***************************************************"

$fichero = Read-Host "Introduce el nombre del archivo o carpeta a buscar: "


if ((Test-Path $fichero) -or (Test-Path $fichero -PathType Container)){
    Write-Host "$fichero existe en el directorio actual" (Get-Location)
} else{
    Write-Host "$fichero no existe en el directorio actual" (Get-Location)
}