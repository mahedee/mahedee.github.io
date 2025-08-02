# Jekyll Serve Script for PowerShell
# This script starts the Jekyll development server

Write-Host "Starting Jekyll development server..." -ForegroundColor Green

# Change to the project directory
Set-Location $PSScriptRoot

# Run Jekyll serve with bundle exec and watch for changes
bundle exec jekyll serve --watch --incremental

Write-Host "Jekyll server stopped." -ForegroundColor Yellow
