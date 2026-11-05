$url = 'https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/bin/TurnKeyFast.exe'
$dest = Join-Path $env:TEMP 'TurnKeyFast.exe'

Write-Host '--> Downloading SIPPICOM TurnKeyFast to %TEMP% and starting it...' -ForegroundColor Cyan

try {
    $wc = New-Object System.Net.WebClient
    $wc.DownloadFile($url, $dest)
    Start-Process -FilePath $dest
    Write-Host '[OK] TurnKeyFast started. It installs without prompts.' -ForegroundColor Green
} catch {
    Write-Host '[Error] Could not launch TurnKeyFast binary.' -ForegroundColor Yellow
}
