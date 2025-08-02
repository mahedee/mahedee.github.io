# Jekyll Production Build Script for PowerShell
# This script builds the site with production configuration

Write-Host "Building Jekyll site for production deployment..." -ForegroundColor Green

# Change to the project directory
Set-Location $PSScriptRoot

# Set environment variable for production build
$env:JEKYLL_ENV = "production"

# Run Jekyll build with both config files (production overrides will be applied)
bundle exec jekyll build --config _config.yml,_config_production.yml

if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Jekyll site built successfully for production!" -ForegroundColor Green
    Write-Host "Site generated in _site directory with URL: https://mahedee.net" -ForegroundColor Cyan
    Write-Host "Ready for deployment to GitHub Pages or your web server!" -ForegroundColor Yellow
} else {
    Write-Host "✗ Jekyll production build failed!" -ForegroundColor Red
    exit $LASTEXITCODE
}
