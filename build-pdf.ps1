# Regenerates the downloadable PDFs from resume.html and cv.html.
# Run this after editing either page, then commit the updated PDFs.
#   powershell -ExecutionPolicy Bypass -File build-pdf.ps1

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

$candidates = @(
  "$env:ProgramFiles\Google\Chrome\Application\chrome.exe",
  "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe",
  "$env:ProgramFiles\Microsoft\Edge\Application\msedge.exe",
  "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe"
)
$browser = $candidates | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $browser) { throw "Chrome or Edge not found - install either, or print to PDF from the browser manually." }

$jobs = @(
  @{ src = "resume.html"; out = "Priyadharshini_Arumugam_Resume.pdf" },
  @{ src = "cv.html";     out = "Priyadharshini_Arumugam_CV.pdf" }
)

foreach ($j in $jobs) {
  $uri = ([System.Uri](Resolve-Path $j.src).Path).AbsoluteUri
  $outPath = Join-Path (Get-Location) $j.out
  & $browser --headless --disable-gpu --no-pdf-header-footer --print-to-pdf="$outPath" $uri 2>$null
  Start-Sleep -Seconds 3
  if (Test-Path $outPath) {
    "{0,-38} {1,6:N1} KB" -f $j.out, ((Get-Item $outPath).Length / 1KB)
  } else {
    Write-Warning ("Failed to generate " + $j.out)
  }
}
