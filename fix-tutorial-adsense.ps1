# Fix AdSense code in tutorial and other pages that have broken comment patterns
# This handles cases where the script is commented but the ins element and push script are not

$files = Get-ChildItem -Path "." -Filter "*.html" -Recurse

$pattern1 = '(?s)<!--<!-- <script[^>]*pagead2\.googlesyndication\.com[^>]*>\s*</script> -->\s*<!-- [^>]*-->\s*<ins class="adsbygoogle"[^>]*>.*?</ins>\s*<script>\s*// \(adsbygoogle[^}]*\}\);\s*</script>'
$replacement1 = '<!-- AdSense disabled: $&'

$pattern2 = '(?s)<!--<!-- <script[^>]*pagead2\.googlesyndication\.com[^>]*>\s*</script> -->\s*<!-- [^>]*-->\s*<ins class="adsbygoogle"[^>]*>.*?</ins>\s*<script>\s*// \(adsbygoogle[^}]*\}\);\s*</script>\s*-->'
$replacement2 = '<!-- AdSense disabled: $& -->'

$count = 0
foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    $newContent = $content
    
    # Handle pattern where script is commented but ins element is not
    $newContent = $newContent -replace $pattern1, '<!-- AdSense disabled: $& -->'
    
    # Handle pattern where entire block needs proper commenting
    $newContent = $newContent -replace $pattern2, '<!-- AdSense disabled: $& -->'
    
    if ($content -ne $newContent) {
        Set-Content -Path $file.FullName -Value $newContent -Encoding UTF8 -NoNewline
        Write-Host "Fixed: $($file.FullName)"
        $count++
    }
}

Write-Host "Processed $count files"