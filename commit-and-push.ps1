# PowerShell script to commit and push all changes to the current branch
# Usage: .\commit-and-push.ps1

# Get current date and time
$currentDateTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Define commit message with timestamp
$commitMessage = "Commit everything at $currentDateTime"

Write-Host "Starting Git operations..." -ForegroundColor Green
Write-Host "Current directory: $(Get-Location)" -ForegroundColor Yellow

try {
    # Check if we're in a git repository
    if (-not (Test-Path ".git")) {
        throw "Error: Not a Git repository. Please run this script from the root of your Git repository."
    }

    # Get current branch name
    $currentBranch = git rev-parse --abbrev-ref HEAD
    Write-Host "Current branch: $currentBranch" -ForegroundColor Cyan

    # Add all changes
    Write-Host "Adding all changes..." -ForegroundColor Yellow
    git add .

    # Check if there are any changes to commit
    $status = git status --porcelain
    if ([string]::IsNullOrWhiteSpace($status)) {
        Write-Host "No changes to commit." -ForegroundColor Yellow
        exit 0
    }

    # Show status
    Write-Host "Git status:" -ForegroundColor Yellow
    git status --short

    # Commit changes
    Write-Host "Committing changes with message: '$commitMessage'" -ForegroundColor Yellow
    git commit -m "$commitMessage"

    # Push to current branch
    Write-Host "Pushing to origin/$currentBranch..." -ForegroundColor Yellow
    git push origin $currentBranch

    Write-Host "Successfully committed and pushed all changes!" -ForegroundColor Green
    Write-Host "Commit message: $commitMessage" -ForegroundColor Green
    Write-Host "Pushed to: origin/$currentBranch" -ForegroundColor Green

} catch {
    Write-Host "Error occurred: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}

Write-Host "Git operations completed." -ForegroundColor Green
