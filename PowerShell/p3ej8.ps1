Write-Host " *****************************************"
Write-Host " >>>>>>>>> CLASIFICAR PERSONAS <<<<<<<<<<<"
Write-Host " *****************************************"

$nombre = Read-Host "¿Cómo te llamas?: "
$sexo = Read-Host "¿Cuál es tu sexo [H/M]?: "

$nombre = $nombre.ToUpper()
$sexo = $sexo.ToUpper()

if (($sexo -eq "M" -and $nombre -lt "M") -or ($sexo -eq "H" -and $nombre -gt "N" )){
    Write-Host "Te corresponde el grupo A"
} else { 
    Write-Host "Te corresponde el grupo B"
}



