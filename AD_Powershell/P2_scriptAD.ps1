# Importamos los departamentos
$departamentos = Import-Csv ".\departamentos.csv" -Delimiter ";"

# Ruta base
$rutaEmpresa = "C:\Empresa"

# -------------------------------------------------
# Creamos la estructura de carpetas
# -------------------------------------------------

# Carpeta principal
New-Item -Path $rutaEmpresa -ItemType Directory

# Crear carpetas de departamentos
foreach ($dep in $departamentos) {
    New-Item -Path "$rutaEmpresa\$($dep.departamento)" -ItemType Directory
}

# -------------------------------------------------
# 2. Permisos NTFS
# -------------------------------------------------

$usuariosDominio = "EMPRESA\Usuarios del dominio"
$administradores = "BUILTIN\Administradores"

# Permisos en C:\Empresa
$aclEmpresa = Get-Acl $rutaEmpresa
$aclEmpresa.SetAccessRuleProtection($true, $false)

$reglaLectura = New-Object System.Security.AccessControl.FileSystemAccessRule(
    $usuariosDominio, "ReadAndExecute", "ContainerInherit,ObjectInherit", "None", "Allow"
)

$aclEmpresa.SetAccessRule($reglaLectura)
Set-Acl $rutaEmpresa $aclEmpresa

# Permisos por departamento
foreach ($dep in $departamentos) {

    $rutaDept = "$rutaEmpresa\$($dep.departamento)"
    $aclDept = Get-Acl $rutaDept
    $aclDept.SetAccessRuleProtection($true, $false)

    # Grupo del departamento
    $reglaModificar = New-Object System.Security.AccessControl.FileSystemAccessRule(
        $dep.departamento, "Modify", "ContainerInherit,ObjectInherit", "None", "Allow"
    )

    # Administradores
    $reglaAdmin = New-Object System.Security.AccessControl.FileSystemAccessRule(
        $administradores, "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow"
    )

    # Usuarios del dominio
    $reglaLectura = New-Object System.Security.AccessControl.FileSystemAccessRule(
        $usuariosDominio, "ReadAndExecute", "ContainerInherit,ObjectInherit", "None", "Allow"
    )

    $aclDept.SetAccessRule($reglaModificar)
    $aclDept.AddAccessRule($reglaAdmin)
    $aclDept.AddAccessRule($reglaLectura)

    Set-Acl $rutaDept $aclDept
}

# -------------------------------------------------
# 3. Compartir carpeta
# -------------------------------------------------

New-SmbShare `
    -Name "Empresa" `
    -Path "C:\Empresa" `
    -ReadAccess "EMPRESA\Usuarios del dominio" `
    -FullAccess "BUILTIN\Administrators"

