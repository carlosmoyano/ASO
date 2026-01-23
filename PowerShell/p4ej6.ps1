clear
Write-Host " *********************************************"
Write-Host " >>>>>>>>>> ADIVINAR NÚMERO [1-100] <<<<<<<<<<"
Write-Host " *********************************************"

$num = Get-Random -Minimum 1 -Maximum 100
#Write-Host "Ha salido $num"
$intentos = 0

$encontrado = $false

do {
    $intentos++
    [int]$intento = Read-Host "Intento $intentos -->  "
        
    if ($intento -eq $num ) {
        Write-Host "Enhorabuena. Lo has encontrado!!! "
        $encontrado = $true
    } elseif ($intento -lt $num ) {
        Write-Host "Tu número está por debajo. "
    } else {
        Write-Host "Tu número está por encima. "
    }
} while (!$encontrado)
Write-Host "Lo has encontrado en $intentos intentos"