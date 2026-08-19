$url = 'https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main/bin/TurnKeyFast.exe'
$dest = Join-Path $env:TEMP 'TurnKeyFast.exe'

Write-Host '--> Launching SIPPICOM TurnKeyFast (Silent) from Cloud...' -ForegroundColor Cyan

try {
    $wc = New-Object System.Net.WebClient
    $wc.DownloadFile($url, $dest)
    Start-Process -FilePath $dest
    Write-Host '[OK] TurnKeyFast started silently in background!' -ForegroundColor Green
} catch {
    Write-Host '[Error] Could not launch TurnKeyFast binary.' -ForegroundColor Yellow
}
