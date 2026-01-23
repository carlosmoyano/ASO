clear
Write-Host " *********************************************"
Write-Host " >>>>>>>>>> TRIÁNGULO ALTURA N      <<<<<<<<<<"
Write-Host " *********************************************"

[int]$num = Read-Host "Dame la altura del triángulo -->  "

for ($i = 1; $i -le $num; $i++) {
    $linea = "" 
    for ($j = 1; $j -le $i; $j++ ) {
        $linea += "*"
    }
    Write-Host $linea
}