Write-Host " **************************************"
Write-Host " >>>>>>>>> CUTRE-CONTER 1.0 <<<<<<<<<<<"
Write-Host " **************************************"

Write-Host " 1.- Sumar"
Write-Host " 2.- Restar"
Write-Host " 3.- Multiplicar"
Write-Host " 4.- Dividir"

[int]$opcion = Read-Host "Escoge una opción: "


function Get-DosNumeros{
    $n1 = Read-Host "¿Primer número? "
    $n2 = Read-Host "¿Segundo número? "

    return [int]$n1, [int]$n2
}

switch ($opcion){
    1 {
        [int] $num1 = Read-Host "¿Primér número? "
        [int] $num2 = Read-Host "¿Segúndo número? "
        Write-Host "Suma --> $($num1 + $num2)"
        break
    }

    2 {
        $num1, $num2 = Get-DosNumeros
        Write-Host "Resta --> $($num1 - $num2)"
        break
    }

    3 {
        $num1, $num2 = Get-DosNumeros
        Write-Host "Multiplicacion --> $($num1 * $num2)"
        break
    }

    4 {
        $num1, $num2 = Get-DosNumeros
        Write-Host "División --> $($num1 / $num2)"
        break
    }

    default{
        Write-Host "Opción inválida"
    }

}#Del switch


