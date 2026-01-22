[int] $num = Read-Host "¿Número a evaluar?:  "

if ($num % 2 -eq 0 ) {
    Write-Host "El número introducido es par"
} else {
    Write-Host "El número introducido es impar" 
}