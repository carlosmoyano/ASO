clear
Write-Host " *********************************************"
Write-Host " >>>>>>>>>>>>>>>  CUENTA ATRAS   <<<<<<<<<<<<<"
Write-Host " *********************************************"

[int]$num = Read-Host "Dame un número:  "

# 1..$num | Join-String -Separator "," Válido en powershel 7+

 Write-Host ">>>>VERSION 1<<<<"
for ($i=$num; $i -gt 0; $i-- ) { 
    Write-Host "$i" -NoNewline
    Write-Host ", " -NoNewline
}
Write-Host "0"




Write-Host "`n>>>>VERSION 2 SIN BUCLE (DEFINE RANGO)<<<<"

$cuentaAtras = $num..0  #Esto define un rango curiosamente

$resultado = $cuentaAtras -join ", "
Write-Host $resultado