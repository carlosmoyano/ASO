clear
Write-Host " *****************************************"
Write-Host " >>>>>>>>> Tramos impositivos <<<<<<<<<<<<"
Write-Host " *****************************************"

[int]$renta = Read-Host "¿Renta anual?: "

switch ($renta) {
    {$renta -lt 10000} {
        Write-Host "Tipo impositivo --> 5%" 
        break
        }
    {($renta -le 10000) -or ($renta -lt 20000)} {Write-Host "Tipo impositivo --> 15%"; break}
    {($renta -le 20000) -or ($renta -lt 35000)} {Write-Host "Tipo impositivo --> 20%"; break}
    {($renta -le 35000) -or ($renta -lt 60000)} {Write-Host "Tipo impositivo --> 30%"; break}
    {$renta -gt 60000} {Write-Host "Tipo impositivo --> 45%"; break}
}