# Jekyll Verbose Build Script for PowerShell
# This script shows all warnings and detailed output

Write-Host "Building Jekyll site for production (verbose mode)..." -ForegroundColor Green

# Change to the project directory
Set-Location $PSScriptRoot

# Set environment variable for production build
$env:JEKYLL_ENV = "production"

Write-Host "Environment: Production" -ForegroundColor Cyan
Write-Host "Target URL: https://mahedee.net/" -ForegroundColor Cyan
Write-Host "Mode: Verbose (all warnings shown)" -ForegroundColor Yellow
Write-Host ""

# Run Jekyll build with bundle exec showing all output
bundle exec jekyll build --verbose

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✓ Jekyll site built successfully for production!" -ForegroundColor Green
    Write-Host "✓ Site generated in _site directory with URL: https://mahedee.net/" -ForegroundColor Green
    Write-Host ""
    Write-Host "📁 Build output: _site/" -ForegroundColor Cyan
    Write-Host "🌐 Ready for deployment!" -ForegroundColor Yellow
} else {
    Write-Host ""
    Write-Host "✗ Jekyll build failed!" -ForegroundColor Red
    exit $LASTEXITCODE
}
