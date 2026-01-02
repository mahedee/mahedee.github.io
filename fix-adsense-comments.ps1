# Fix AdSense Comments Script
# This script fixes malformed HTML comments that are preventing AdSense from being properly disabled

Write-Host "Fixing malformed AdSense comments..." -ForegroundColor Green

# Find all HTML files with malformed AdSense comments
$htmlFiles = Get-ChildItem -Path "." -Filter "*.html" -Recurse | Where-Object {
    $content = Get-Content $_.FullName -Raw -ErrorAction SilentlyContinue
    $content -and ($content -match "<!-- AdSense disabled: <!-- AdSense Disabled")
}

$fixedCount = 0

foreach ($file in $htmlFiles) {
    Write-Host "Processing: $($file.FullName)" -ForegroundColor Cyan
    
    $content = Get-Content $file.FullName -Raw
    
    # Fix the malformed comments - replace the broken comment structure
    # Pattern: <!-- AdSense disabled: <!-- AdSense Disabled ... --> -->
    # Replace with proper HTML comment: <!-- AdSense disabled ... -->
    
    $fixedContent = $content -replace '<!-- AdSense disabled: <!-- AdSense Disabled\s*\n(.*?)\n\s*--> -->', '<!-- AdSense disabled$1-->'
    
    # Also handle cases where there might be variations in spacing/newlines
    $fixedContent = $fixedContent -replace '<!-- AdSense disabled: <!-- AdSense Disabled(.*?)--> -->', '<!-- AdSense disabled$1-->'
    
    # Handle the specific pattern we found in the files
    $fixedContent = $fixedContent -replace '<!-- AdSense disabled: <!-- AdSense Disabled\s*\n', '<!--'
    $fixedContent = $fixedContent -replace '--> -->', '-->'
    
    if ($content -ne $fixedContent) {
        Set-Content -Path $file.FullName -Value $fixedContent -NoNewline
        $fixedCount++
        Write-Host "  ✅ Fixed malformed comments" -ForegroundColor Green
    } else {
        Write-Host "  ⏭️  No changes needed" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "✅ Fixed malformed AdSense comments in $fixedCount files" -ForegroundColor Green
Write-Host ""
Write-Host "The AdSense code should now be properly commented out." -ForegroundColor Cyan
Write-Host "You may want to commit and push these changes to see them in production." -ForegroundColor Cyan