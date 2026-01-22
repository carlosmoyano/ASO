clear
Write-Host " *******************************************"
Write-Host " >>>>>>>>> ANTROS DE PERDICIÓN <<<<<<<<<<<<<"
Write-Host " *******************************************"

[int]$edad = Read-Host "¿Edad ludopática real?: "

switch ($edad) {
    {$edad -lt 4} {Write-Host "Aceptable. Puedes entrar gratis"; break}
    {$_ -in 4..18} {Write-Host "Puedes entrar aflojando 5 euros"; break}
    {$_ -gt 18} {Write-Host "Puedes entrar aflojando 10 euros. Pero que sepas que vas a perder lo menos el doble. Avisado estás."; break}
}