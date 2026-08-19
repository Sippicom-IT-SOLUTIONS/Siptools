$url = 'https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main/bin/SubnetZero.exe'
$dest = Join-Path $env:TEMP 'SubnetZero.exe'

Write-Host '--> Launching SIPPICOM SubnetZero from Cloud...' -ForegroundColor Cyan

try {
    $wc = New-Object System.Net.WebClient
    $wc.DownloadFile($url, $dest)
    Start-Process -FilePath $dest
    Write-Host '[OK] SubnetZero launched successfully!' -ForegroundColor Green
} catch {
    Write-Host '[Error] Could not launch SubnetZero binary.' -ForegroundColor Yellow
}
