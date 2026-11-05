$url = 'https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/bin/CtrlAltPass.exe'
$dest = Join-Path $env:TEMP 'CtrlAltPass.exe'

Write-Host '--> Downloading SIPPICOM CtrlAltPass to %TEMP% and starting it...' -ForegroundColor Cyan

try {
    $wc = New-Object System.Net.WebClient
    $wc.DownloadFile($url, $dest)
    Start-Process -FilePath $dest
    Write-Host '[OK] CtrlAltPass started.' -ForegroundColor Green
} catch {
    Write-Host '[Error] Could not launch CtrlAltPass binary.' -ForegroundColor Yellow
}
