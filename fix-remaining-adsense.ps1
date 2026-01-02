# Fix Remaining AdSense Scripts
# This script finds and comments out any remaining active AdSense scripts

Write-Host "Fixing remaining active AdSense scripts..." -ForegroundColor Green

# Find all HTML files with active AdSense scripts (not already commented)
$htmlFiles = Get-ChildItem -Path "." -Filter "*.html" -Recurse | Where-Object {
    $content = Get-Content $_.FullName -Raw -ErrorAction SilentlyContinue
    $content -and ($content -match '<script async src="https://pagead2\.googlesyndication\.com')
}

$fixedCount = 0

foreach ($file in $htmlFiles) {
    Write-Host "Processing: $($file.FullName)" -ForegroundColor Cyan
    
    $content = Get-Content $file.FullName -Raw
    $originalContent = $content
    
    # Comment out any remaining active AdSense script blocks
    # Pattern: <script async src="https://pagead2.googlesyndication.com... through </script>
    $pattern = '<script async src="https://pagead2\.googlesyndication\.com.*?</script>'
    $replacement = '<!-- $& -->'
    
    $fixedContent = $content -replace $pattern, $replacement
    
    # Also comment out any standalone ins class="adsbygoogle" elements
    $insPattern = '<ins class="adsbygoogle".*?</ins>'
    $fixedContent = $fixedContent -replace $insPattern, '<!-- $& -->'
    
    # Comment out adsbygoogle push scripts
    $pushPattern = '\(adsbygoogle = window\.adsbygoogle \|\| \[\]\)\.push\(\{\}\);'
    $fixedContent = $fixedContent -replace $pushPattern, '// $&'
    
    if ($originalContent -ne $fixedContent) {
        Set-Content -Path $file.FullName -Value $fixedContent -NoNewline
        $fixedCount++
        Write-Host "  ✅ Fixed remaining AdSense scripts" -ForegroundColor Green
    } else {
        Write-Host "  ⏭️  No active scripts found" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "✅ Fixed remaining AdSense scripts in $fixedCount files" -ForegroundColor Green
Write-Host ""
Write-Host "All AdSense scripts should now be properly disabled." -ForegroundColor Cyan
Write-Host "You may want to commit and push these changes to see them in production." -ForegroundColor Cyan