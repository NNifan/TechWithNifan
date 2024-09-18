# Define variables
$folderPath = "C:\ProgramData\TechWithNifan"
$chromeDownloadUrl = "https://dl.google.com/dl/chrome/install/googlechromestandaloneenterprise64.msi"
$chromeInstaller = "$folderPath\googlechromestandaloneenterprise64.msi"

# Create folder if it doesn't exist
if (-not (Test-Path -Path $folderPath)) {
    New-Item -ItemType Directory -Path $folderPath
}

# Download the latest version of Chrome
Invoke-WebRequest -Uri $chromeDownloadUrl -OutFile $chromeInstaller

# Install Google Chrome silently
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i $chromeInstaller /quiet /norestart" -Wait
