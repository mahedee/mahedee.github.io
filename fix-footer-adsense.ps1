# Fix Footer AdSense Scripts
# This script fixes footer AdSense scripts that weren't caught by the previous scripts

Write-Host "Fixing footer AdSense scripts..." -ForegroundColor Green

# Find all HTML files with remaining footer AdSense scripts
$htmlFiles = Get-ChildItem -Path "." -Filter "*.html" -Recurse | Where-Object {
    $content = Get-Content $_.FullName -Raw -ErrorAction SilentlyContinue
    $content -and ($content -match 'Add sense code for all page|<script async src="https://pagead2\.googlesyndication\.com.*?".*?>.*?</script>' -and $content -notmatch '<!-- <script async src="https://pagead2\.googlesyndication\.com')
}

$fixedCount = 0

foreach ($file in $htmlFiles) {
    Write-Host "Processing: $($file.FullName)" -ForegroundColor Cyan
    
    $content = Get-Content $file.FullName -Raw
    $originalContent = $content
    
    # Comment out footer AdSense scripts with comments
    $pattern1 = '<!-- Add sense code for all page : added globaly -->\s*\n\s*<script async src="https://pagead2\.googlesyndication\.com/pagead/js/adsbygoogle\.js\?client=ca-pub-3654930341568980"\s*crossorigin="anonymous"></script>'
    $replacement1 = '<!-- AdSense disabled: Add sense code for all page : added globaly
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-3654930341568980"
crossorigin="anonymous"></script>
-->'
    
    $fixedContent = $content -replace $pattern1, $replacement1
    
    # Also handle standalone footer scripts without comments
    $pattern2 = '<script async src="https://pagead2\.googlesyndication\.com/pagead/js/adsbygoogle\.js\?client=ca-pub-3654930341568980"\s*crossorigin="anonymous"></script>'
    $replacement2 = '<!-- <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-3654930341568980"
crossorigin="anonymous"></script> -->'
    
    $fixedContent = $fixedContent -replace $pattern2, $replacement2
    
    if ($originalContent -ne $fixedContent) {
        Set-Content -Path $file.FullName -Value $fixedContent -NoNewline
        $fixedCount++
        Write-Host "  ✅ Fixed footer AdSense scripts" -ForegroundColor Green
    } else {
        Write-Host "  ⏭️  No footer scripts found" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "✅ Fixed footer AdSense scripts in $fixedCount files" -ForegroundColor Green
Write-Host ""
Write-Host "All AdSense should now be completely disabled." -ForegroundColor Cyan