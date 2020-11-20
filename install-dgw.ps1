< # Install PowerShell 7 with powershell
Invoke-Expression "& { $(Invoke-RestMethod https://aka.ms/install-powershell.ps1) } -UseMSI -quiet"

# Refresh the path for PowerShell 7 afer installation
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
#>

# Install and configure data-gateway via
$power_bi_gate_install_url ="https://download.microsoft.com/download/D/A/1/DA1FDDB8-6DA8-4F50-B4D0-18019591E182/GatewayInstall.exe"
$power_bi_gate_download_path="$PSScriptRoot\GatewayInstall.exe"

#Installing Power BI Gateway
Write-Output "Installing Power BI GateWay =" $power_bi_gate_install_url
Write-Output "Initiating Install for Power BI Gtwy"
Start-Process -filepath $power_bi_gate_download_path -ArgumentList "/Q" -Wait
