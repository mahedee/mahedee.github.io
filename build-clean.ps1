# Jekyll Clean Build Script for PowerShell
# This script provides minimal, clean output for production builds

Write-Host "🚀 Building Jekyll site for production..." -ForegroundColor Green

# Change to the project directory
Set-Location $PSScriptRoot

# Set environment variable for production build
$env:JEKYLL_ENV = "production"

Write-Host "🌍 Target: https://mahedee.net/" -ForegroundColor Cyan
Write-Host ""

# Capture build output and show only essential information
$buildOutput = bundle exec jekyll build 2>&1

# Check if build was successful
if ($LASTEXITCODE -eq 0) {
    # Extract build time from output
    $buildTime = ($buildOutput | Select-String "done in .* seconds").Matches.Value
    
    Write-Host "✅ Build completed successfully!" -ForegroundColor Green
    if ($buildTime) {
        Write-Host "⏱️  $buildTime" -ForegroundColor Gray
    }
    Write-Host ""
    Write-Host "📁 Output: _site/" -ForegroundColor Cyan
    Write-Host "🌐 Ready for deployment to GitHub Pages!" -ForegroundColor Yellow
} else {
    Write-Host "❌ Build failed!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Error details:" -ForegroundColor Yellow
    $buildOutput | Where-Object { $_ -match "Error|Failed|Exception" }
    exit $LASTEXITCODE
}
