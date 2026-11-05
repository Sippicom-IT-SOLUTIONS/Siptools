$url = 'https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/bin/PingMeMaybe.exe'
$dest = Join-Path $env:TEMP 'PingMeMaybe.exe'

Write-Host '--> Downloading SIPPICOM PingMeMaybe to %TEMP% and starting it...' -ForegroundColor Cyan

try {
    $wc = New-Object System.Net.WebClient
    $wc.DownloadFile($url, $dest)
    Start-Process -FilePath $dest
    Write-Host '[OK] PingMeMaybe started.' -ForegroundColor Green
} catch {
    Write-Host '[Error] Could not launch PingMeMaybe binary.' -ForegroundColor Yellow
}
