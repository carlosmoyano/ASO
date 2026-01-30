# Cargamos el módulo de Active Directory
Import-Module ActiveDirectory

# Importamos los archivos CSV
$departamentos = Import-Csv ".\departamentos.csv" -Delimiter ";"
$empleados = Import-Csv ".\empleados.csv" -Delimiter ";"

# Creamos la OU principal Empresa
New-ADOrganizationalUnit -Name "Empresa" -Path "DC=empresa,DC=local"

# Recorremos el archivo de departamentos
foreach ($dep in $departamentos) {

    # Creamos una OU por cada departamento
    New-ADOrganizationalUnit -Name $dep.departamento -Path "OU=Empresa,DC=empresa,DC=local"

    # Creamos un grupo global para cada departamento
    New-ADGroup -Name $dep.departamento -GroupScope Global -Path "OU=$($dep.departamento),OU=Empresa,DC=empresa,DC=local"
}

# Creamos la contraseña por defecto
$password = ConvertTo-SecureString "aso2025." -AsPlainText -Force

# Recorremos el archivo de empleados
foreach ($emp in $empleados) {

    # Creamos el login nombre.apellido en minúsculas
    $login = ($emp.nombre + "." + $emp.apellido).ToLower()

    # Creamos el usuario en su OU de departamento
    New-ADUser `
        -Name "$($emp.nombre) $($emp.apellido)" `
        -SamAccountName $login `
        -UserPrincipalName "$login@empresa.local" `
        -AccountPassword $password `
        -Enabled $true `
        -ChangePasswordAtLogon $true `
        -Path "OU=$($emp.departamento),OU=Empresa,DC=empresa,DC=local"

    # Añadimos el usuario al grupo de su departamento
    Add-ADGroupMember -Identity $emp.departamento -Members $login
}

Write-Host "Script finalizado correctamente"
