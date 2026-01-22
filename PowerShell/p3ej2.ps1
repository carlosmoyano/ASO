[int] $edad = Read-Host "¿Qué edad tienes?:  "

if ($edad -lt 18 ) {
    Write-Host "Eres menor de edad.`nEstás autorizado a trabajar en negro."
} else {
    Write-Host "Eres mayor de edad. `nEstás obligado a trabajar hasta los 87 años." 
}