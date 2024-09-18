# Detection.ps1 - Script to check if Google Chrome is installed
$chrome = Get-WmiObject -Query "SELECT * FROM Win32_Product WHERE Name='Google Chrome'"
if ($chrome) {
    exit 0  # Success, Chrome is installed
} else {
    exit 1  # Failure, Chrome is not installed
}
