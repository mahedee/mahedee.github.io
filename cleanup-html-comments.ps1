# PowerShell script to remove HTML comments that cause --> artifacts
# This script removes "Last reviewed and modified" comments from all markdown files

Write-Host "🔧 Cleaning HTML Comments from Blog Posts..." -ForegroundColor Yellow
Write-Host ""

# Get all markdown files in _posts
$markdownFiles = Get-ChildItem -Path "_posts" -Filter "*.md" -Recurse

$totalFiles = $markdownFiles.Count
$processedFiles = 0
$modifiedFiles = 0

Write-Host "Found $totalFiles markdown files to process..." -ForegroundColor Green
Write-Host ""

foreach ($file in $markdownFiles) {
    $processedFiles++
    $content = Get-Content $file.FullName -Raw
    $originalContent = $content
    
    # Remove "Last reviewed and modified" comments
    $content = $content -replace '<!-- Last reviewed and modified: [^>]+ -->\s*', ''
    
    # Remove empty article banner comments
    $content = $content -replace '<!-- Article banner image \(optional\) -->\s*', ''
    $content = $content -replace '<!-- !\[Document Management System Banner\]\(\.\/images\/dms-banner\.png\) -->\s*', ''
    
    # Remove any other standalone HTML comments at the end of articles
    $content = $content -replace '\s*<!-- [^>]+ -->\s*$', ''
    
    # Check if content was modified
    if ($content -ne $originalContent) {
        $modifiedFiles++
        Set-Content -Path $file.FullName -Value $content -NoNewline
        Write-Host "✓ Cleaned: $($file.Name)" -ForegroundColor Green
    } else {
        Write-Host "- Skipped: $($file.Name) (no HTML comments found)" -ForegroundColor Gray
    }
    
    # Progress indicator
    if ($processedFiles % 10 -eq 0) {
        Write-Host "  Progress: $processedFiles/$totalFiles files processed..." -ForegroundColor Cyan
    }
}

Write-Host ""
Write-Host "🎉 HTML Comment Cleanup Complete!" -ForegroundColor Green
Write-Host "📊 Summary:" -ForegroundColor Yellow
Write-Host "   - Total files processed: $totalFiles" -ForegroundColor White
Write-Host "   - Files modified: $modifiedFiles" -ForegroundColor White
Write-Host "   - Files unchanged: $($totalFiles - $modifiedFiles)" -ForegroundColor White
Write-Host ""
Write-Host "✨ The --> artifacts should now be removed from your articles!" -ForegroundColor Green
Write-Host "💡 Run '.\build-production.ps1' to rebuild your site." -ForegroundColor Cyan