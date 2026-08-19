$url = 'https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/tools/main/bin/PaperJamZero.exe'
$dest = Join-Path $env:TEMP 'PaperJamZero.exe'

Write-Host '--> Launching SIPPICOM PaperJamZero from Cloud...' -ForegroundColor Cyan

try {
    $wc = New-Object System.Net.WebClient
    $wc.DownloadFile($url, $dest)
    Start-Process -FilePath $dest
    Write-Host '[OK] PaperJamZero launched successfully!' -ForegroundColor Green
} catch {
    Write-Host '[Error] Could not launch PaperJamZero binary.' -ForegroundColor Yellow
}
