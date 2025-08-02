# Local Development Server with Facebook Comments Testing
# This script starts a local server optimized for testing Facebook comments

Write-Host "🚀 Starting Jekyll local server for Facebook comments testing..." -ForegroundColor Green

# Change to the project directory
Set-Location $PSScriptRoot

# Important: Set environment to development for local testing
$env:JEKYLL_ENV = "development"

Write-Host "🌍 Environment: Development (localhost)" -ForegroundColor Cyan
Write-Host "📱 Facebook Comments: Enabled for testing" -ForegroundColor Cyan
Write-Host "⚠️  Note: Facebook comments may have limitations on localhost" -ForegroundColor Yellow
Write-Host ""

Write-Host "📋 Facebook Comments Testing Setup:" -ForegroundColor Magenta
Write-Host "   • App ID: 1641495303280571" -ForegroundColor White
Write-Host "   • Testing URL: http://localhost:4000" -ForegroundColor White
Write-Host "   • Comments Provider: Facebook" -ForegroundColor White
Write-Host ""

Write-Host "🔧 Starting server with local configuration..." -ForegroundColor Cyan

# Start Jekyll serve with local config that allows Facebook comments
bundle exec jekyll serve --config _config.yml,_config_local.yml --watch --incremental --host 0.0.0.0 --port 4000

Write-Host "📡 Jekyll local server stopped." -ForegroundColor Yellow
