[int] $numHoras = Read-Host "¿Número de horas trabajadas? "
[int] $salarioHora = Read-Host "¿Coste por hora? "

Write-Host "**********************************"

Write-Host "Salario que deberías cobrar ==> $($numHoras * $salarioHora) euros "
Write-Host "Lo que vás a cobrar ==> $(($numHoras * $salarioHora) / 1.75 ) euros.  Hay recortes.... a joderse :)"