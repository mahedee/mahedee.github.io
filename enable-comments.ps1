# Enable Comments on Blog Posts
# This script adds 'comments: true' to blog posts that don't have it

Write-Host "Enabling comments on blog posts..." -ForegroundColor Green

# Get all markdown files in _posts directory
$postFiles = Get-ChildItem -Path "_posts" -Filter "*.md" -Recurse

$updatedCount = 0
$skippedCount = 0

foreach ($file in $postFiles) {
    $content = Get-Content $file.FullName -Raw
    
    # Check if the file has front matter and doesn't already have comments setting
    if ($content -match '^---\s*\n(.*?)\n---\s*\n' -and $content -notmatch 'comments\s*:') {
        Write-Host "Updating: $($file.Name)" -ForegroundColor Cyan
        
        # Add comments: true to the front matter
        $updatedContent = $content -replace '^(---\s*\n.*?)(---\s*\n)', "`$1comments: true`n`$2"
        
        # Write back to file
        Set-Content -Path $file.FullName -Value $updatedContent -NoNewline
        $updatedCount++
    } else {
        $skippedCount++
    }
}

Write-Host ""
Write-Host "✅ Comments enabled on $updatedCount blog posts" -ForegroundColor Green
Write-Host "⏭️  Skipped $skippedCount posts (already have comments setting or no front matter)" -ForegroundColor Yellow
Write-Host ""
Write-Host "Note: You may want to manually review the changes before committing." -ForegroundColor Cyan
