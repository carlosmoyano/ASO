###########################################
# FUNCIONES

function Get-DosNumeros{
    $n1 = Read-Host "¿Primer número? "
    $n2 = Read-Host "¿Segundo número? "

    return [int]$n1, [int]$n2
}

function Sumar ($x, $y ) {
    return ($x + $y)
}

function Restar ($x, $y ) {
    return ($x - $y)
}

function Multiplicar ($x, $y ) {
    return ($x * $y)
}

function Dividir ($x, $y ) {
    return ($x / $y)
}
################ PROGRAMA ##########################

Write-Host " **************************************"
Write-Host " >>>>>>>>> CUTRE-COUNTER 2.0 <<<<<<<<<<<"
Write-Host " **************************************"

Write-Host " 1.- Sumar"
Write-Host " 2.- Restar"
Write-Host " 3.- Multiplicar"
Write-Host " 4.- Dividir"

[int]$opcion = Read-Host "Escoge una opción: "

switch ($opcion){
    1 {$num1, $num2 = Get-DosNumeros; Write-Host "Suma --> $(Sumar $num1 $num2)"; break}
    2 {$num1, $num2 = Get-DosNumeros; Write-Host "Resta --> $(Restar $num1 $num2)"; break}
    3 {$num1, $num2 = Get-DosNumeros; Write-Host "Multiplicar --> $(Multiplicar $num1 $num2)"; break}
    4 {$num1, $num2 = Get-DosNumeros; Write-Host "Dividir --> $(Dividir $num1 $num2)"; break}
    default{ Write-Host "Opción inválida" }
}#Del switch
