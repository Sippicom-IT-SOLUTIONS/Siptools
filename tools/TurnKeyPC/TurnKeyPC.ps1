$url = 'https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main/bin/TurnKeyPC.exe'
$dest = Join-Path $env:TEMP 'TurnKeyPC.exe'

Write-Host '--> Launching SIPPICOM TurnKeyPC from Cloud...' -ForegroundColor Cyan

try {
    $wc = New-Object System.Net.WebClient
    $wc.DownloadFile($url, $dest)
    Start-Process -FilePath $dest
    Write-Host '[OK] TurnKeyPC launched successfully!' -ForegroundColor Green
} catch {
    Write-Host '[Error] Could not launch TurnKeyPC binary.' -ForegroundColor Yellow
}
