clear
Write-Host " *********************************************"
Write-Host " >>>>>>>>>       VIEJEITOR 1.0   <<<<<<<<<<<<<"
Write-Host " *********************************************"

$edad = Read-Host "¿Cuantos turrones te has comido?: "

for ($i=0; $i -lt $edad; $i++ ) {
    Write-Host "$($i+1) "
}