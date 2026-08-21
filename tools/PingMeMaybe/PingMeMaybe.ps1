$url = 'https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/bin/PingMeMaybe.exe'
$dest = Join-Path $env:TEMP 'PingMeMaybe.exe'

Write-Host '--> Launching SIPPICOM PingMeMaybe from Cloud...' -ForegroundColor Cyan

try {
    $wc = New-Object System.Net.WebClient
    $wc.DownloadFile($url, $dest)
    Start-Process -FilePath $dest
    Write-Host '[OK] PingMeMaybe launched successfully!' -ForegroundColor Green
} catch {
    Write-Host '[Error] Could not launch PingMeMaybe binary.' -ForegroundColor Yellow
}
