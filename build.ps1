# Jekyll Build Script for PowerShell
# This script ensures proper gem versions are used by bundler

Write-Host "Building Jekyll site for production..." -ForegroundColor Green

# Change to the project directory
Set-Location $PSScriptRoot

# Set environment variable for production build
$env:JEKYLL_ENV = "production"

Write-Host "Environment: Production" -ForegroundColor Cyan
Write-Host "Target URL: https://mahedee.net/" -ForegroundColor Cyan
Write-Host ""

# Run Jekyll build with bundle exec to avoid gem version conflicts
Write-Host "🔨 Building site..." -ForegroundColor Cyan

# Capture build output to check for success/failure
$buildResult = bundle exec jekyll build 2>&1
$buildExitCode = $LASTEXITCODE

# Extract only essential information
$configLine = $buildResult | Where-Object { $_ -match "Configuration file:" }
$sourceLine = $buildResult | Where-Object { $_ -match "Source:" }
$destLine = $buildResult | Where-Object { $_ -match "Destination:" }
$generateLine = $buildResult | Where-Object { $_ -match "Generating\.\.\." }
$feedLine = $buildResult | Where-Object { $_ -match "Jekyll Feed:" }
$doneLine = $buildResult | Where-Object { $_ -match "done in .* seconds" }

# Display essential build info
if ($configLine) { Write-Host $configLine -ForegroundColor Gray }
if ($sourceLine) { Write-Host $sourceLine -ForegroundColor Gray }
if ($destLine) { Write-Host $destLine -ForegroundColor Gray }
if ($generateLine) { Write-Host $generateLine -ForegroundColor Gray }
if ($feedLine) { Write-Host $feedLine -ForegroundColor Gray }
if ($doneLine) { Write-Host $doneLine -ForegroundColor Gray }

# Set the exit code for the if statement below
$LASTEXITCODE = $buildExitCode

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
