clear
Write-Host " *********************************************"
Write-Host " >>>>>>>>>>  TABLA MULTIPLICAR   <<<<<<<<<<<<<"
Write-Host " *********************************************"

[int]$num = Read-Host "Dame un número:  "

Write-Host ">>>>>>>>>>  TABLA MULTIPLICAR   <<<<<<<<<<<<<"
for ($i=0; $i -lt 10; $i++) { 
    Write-Host "$($i + 1) * $num : $(($i+1)*$num)"
}