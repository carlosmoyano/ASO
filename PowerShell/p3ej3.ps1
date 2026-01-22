[int] $num1 = Read-Host "¿Primér número? "
[int] $num2 = Read-Host "¿Segúndo número? "

if ($num1 -lt $num2) {
    Write-Host "El primer número es menor que el segundo"
} elseif ( $num1 -gt $num2){
    Write-Host "El primer número es mayor que el segundo"
} else {
    Write-Host "Los dos números introducidos son iguales"
}