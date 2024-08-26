Import-Module -Name ./examples/Install-BasesCli.psm1

# Define the remote server name or IP address
$remoteServer = "ob-app-01"
# Define the credentials for the remote session
$credential = Get-Credential

# Create and start the PSSession
try {
    $session = New-PSSession -ComputerName $remoteServer -Credential $credential
    Write-Output "PSSession to $remoteServer started successfully."
    
    Invoke-Command -Session $session -ScriptBlock {
        Install-BasesCli
    }

} catch {
    Write-Error "Failed to create PSSession to $remoteServer. Error: $_"
}

