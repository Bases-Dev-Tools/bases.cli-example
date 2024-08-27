function Install-DotNet {    
    # Will check if .NET is Installed and install it if not
    $dotnetVersion = "8.0"
    $dotnetPath = & "dotnet" --list-sdks 2>$null
    if ($dotnetPath -match $dotnetVersion) {
        Write-Output ".NET $dotnetVersion is already installed."
    }
    else {
        Write-Output ".NET $dotnetVersion is not installed. Installing now..."

        # Define download URL and installer path
        $dotnetInstallerUrl = "https://dotnet.microsoft.com/download/dotnet/thank-you/sdk-8.0.100-windows-x64-installer"
        $installerPath = "$env:TEMP\dotnet-sdk-8.0.100-win-x64.exe"
        # Download the installer
        Invoke-WebRequest -Uri $dotnetInstallerUrl -OutFile $installerPath
        # Install .NET
        Start-Process -FilePath $installerPath -ArgumentList "/quiet" -Wait
        # Clean up installer
        Remove-Item -Path $installerPath
        # Recheck installation
        if (Test-DotNetVersion -Version $dotnetVersion) {
            Write-Output ".NET $dotnetVersion has been successfully installed."
        }
        else {
            Write-Output "Failed to install .NET $dotnetVersion."
        }
    }    
}