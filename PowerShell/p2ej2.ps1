[int] $num1 = Read-Host "¿Primér número? "
[int] $num2 = Read-Host "¿Segúndo número número? "

Write-Host "Suma => $($num1 + $num2)"
Write-Host "Resta => $($num1 - $num2)"
Write-Host "Multiplicación => $($num1 * $num2)"
Write-Host "División => $($num1 / $num2)"
Write-Host "Resto => $($num1 % $num2)"