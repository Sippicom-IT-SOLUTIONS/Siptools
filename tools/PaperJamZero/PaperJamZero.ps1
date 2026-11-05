$url = 'https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/bin/PaperJamZero.exe'
$dest = Join-Path $env:TEMP 'PaperJamZero.exe'

Write-Host '--> Downloading SIPPICOM PaperJamZero to %TEMP% and starting it...' -ForegroundColor Cyan

try {
    $wc = New-Object System.Net.WebClient
    $wc.DownloadFile($url, $dest)
    Start-Process -FilePath $dest
    Write-Host '[OK] PaperJamZero started.' -ForegroundColor Green
} catch {
    Write-Host '[Error] Could not launch PaperJamZero binary.' -ForegroundColor Yellow
}
