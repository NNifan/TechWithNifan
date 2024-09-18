# Define the folder path and installer file location
$folderPath = "C:\ProgramData\TechWithNifan"
$chromeInstaller = "$folderPath\googlechromestandaloneenterprise64.msi"

# Uninstall Google Chrome silently
$chromeUninstall = Get-WmiObject -Query "SELECT * FROM Win32_Product WHERE Name='Google Chrome'"
if ($chromeUninstall) {
    $chromeUninstall.Uninstall() | Out-Null
    Write-Host "Google Chrome has been uninstalled."
    
    # Remove the downloaded installer from the folder
    Remove-Item -Path $chromeInstaller -Force
    Write-Host "Chrome installer has been removed from $chromeInstaller."
}
