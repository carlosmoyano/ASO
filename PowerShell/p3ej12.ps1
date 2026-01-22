clear
Write-Host " *********************************************"
Write-Host " >>>>>>>>> PIZZERÍA BELLA NAPOLI <<<<<<<<<<<<<"
Write-Host " *********************************************"

$vegetariana = "Mozarella, tomate, "
$novegetariana = "Mozarella, tomate, "

$pizza = Read-Host "¿Pizza => [VEGETARIANA | NO VEGETARIANA] ?:"

#$pizza = $pizza.ToUpper();

if ($pizza -ieq "VEGETARIANA" ) {
    Write-Host "Ingredientes vegetarianos que puedes añadir: 1 - Pimiento | 2 - Tofu -SOLO UNO- BAJO TU RESPONSABILIDAD"
    [int]$opcion = Read-Host "¿Cuál quieres? "
    if ($opcion -eq 1){
        $vegetariana = $vegetariana + " pimiento"
    } else {
        $vegetariana = $vegetariana + " tofu"
    }
    Write-Host "Tu pizza vegetariana lleva: $vegetariana"
} else {
     Write-Host "Ingredientes buenos no vegetarianos que puedes añadir: 1 - Peperoni | 2 - Jamon | 3- Bacon (Salmón no queda) - SOLO UNO -"
     [int]$opcion = Read-Host "¿Cuál quieres? "
    if ($opcion -eq 1){
        $novegetariana = $novegetariana + " peperoni"
    } elseif ($opcion -eq 2) {
        $novegetariana = $novegetariana + " jamón"
    } else {
       $novegetariana = $novegetariana + " bacon" 
    }
    Write-Host "Tu pizza normal lleva: $novegetariana"
}