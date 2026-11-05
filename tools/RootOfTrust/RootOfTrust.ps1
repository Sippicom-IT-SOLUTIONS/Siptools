$FilePath = if ($args.Count -gt 0) { $args[0] } else { $null }

$url = 'https://raw.githubusercontent.com/Sippicom-IT-SOLUTIONS/Siptools/main/bin/RootOfTrust.exe'
$dest = Join-Path $env:TEMP 'RootOfTrust.exe'

Write-Host '--> Downloading SIPPICOM RootOfTrust to %TEMP% and starting it...' -ForegroundColor Cyan

try {
    $wc = New-Object System.Net.WebClient
    $wc.DownloadFile($url, $dest)
    if ($FilePath) {
        Start-Process -FilePath $dest -ArgumentList ('"' + $FilePath + '"')
    } else {
        Start-Process -FilePath $dest
    }
    Write-Host '[OK] RootOfTrust started.' -ForegroundColor Green
} catch {
    Write-Host '[Error] Could not launch RootOfTrust binary.' -ForegroundColor Yellow
}
