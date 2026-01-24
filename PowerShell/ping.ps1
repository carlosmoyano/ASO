function TestPing ($Address) {

    $Result = Test-Connection -ComputerName $Address -ErrorAction SilentlyContinue

    if ($? -eq $true) { 
      #  Write-Host "Ping correcto a $Address "
        Write-Output "Ping correcto a $Address "
    } else {
        Write-Host "Ping no correcto a $Address "
    }
}

TestPing "192.168.1.1"