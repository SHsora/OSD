Write-Host -ForegroundColor Green "Starting OSDCloud ZTI ..."
start-sleep -Seconds 3
 
Write-Host -ForegroundColor Green "Setting Display Resolution to 1600"
Set-DisRes 1600
start-sleep -Seconds 2
 
Write-Host -ForegroundColor Green "Updating OSD Powershell Module"
Install-Module OSD -Force
 
Write-Host -ForegroundColor Green "Importing OSD Powershell Module"
Import-Module OSD -Force
 
Write-Host -ForegroundColor Green "Start OSD Cloud"
Start-OSDCloud -OSLanguage fr-fr -OSName 'Windows 11 22H2 x64' -OSLicense Volume -OSEdition Pro -Zti
 
Write-Host -ForegroundColor Green "Restarting ..."
start-sleep -Seconds 5
wpeutil reboot
