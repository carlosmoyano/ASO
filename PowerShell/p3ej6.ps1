Write-Host " ***************************************************"
Write-Host " >>>>>>>>> Localizador ficheros/carpetas <<<<<<<<<<<"
Write-Host " ***************************************************"

$ruta = Read-Host "Introduce la ruta de la carpeta a listar: "


if (Test-Path  $ruta -PathType Container) {
    Write-Host "$ruta es un directorio. `n" -ForegroundColor Green
    Get-ChildItem -Path $ruta -Recurse
}