clear
Write-Host " *********************************************"
Write-Host " >>>>>>>>> BUCLE FOR EJ1         <<<<<<<<<<<<<"
Write-Host " *********************************************"


$nombre = Read-Host "¿Cómo te llamas perla?:"
$num = Read-Host "Introduce un número: "

for ($i=0; $i -lt $num; $i++ ) {
    Write-Host " >>>>>>>>> Hola $nombre  <<<<<<<<<<<<<"
}