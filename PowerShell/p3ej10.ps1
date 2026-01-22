clear
Write-Host " *****************************************"
Write-Host " >>>>>>>>> INCENTIVOS FALSOS <<<<<<<<<<<<<"
Write-Host " *****************************************"

$Usuario = Read-Host "Hola. ¿Cómo te llamas?: "
[double]$renta = Read-Host "¿Cuál es tu puntuación?: "

switch ($renta) {
    0.0 {Write-Host "Inaceptable $Usuario. De incentivo tienes un colín --> $(2400 * 0.0) euros"; break}
    0.4 {Write-Host "Aceptable $Usuario. Puedes soñar con vacaciones --> $(2400 * 0.4) euros adicionales"; break}
    {$renta -ge 0.6} {Write-Host "Meritorio D.$Usuario. Como si fueras un político. To pagaooooo --> $(2400 * 0.6) euros adicionales"; break}
    default {Write-Host "Puntuación no válida [0.0 | 0.4 | 0.6 o más]"; break}
}