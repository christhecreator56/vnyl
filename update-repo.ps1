# PowerShell script to update the GitHub repository
# Run this script whenever you make changes to keep the repo updated

Write-Host "Updating GitHub repository..." -ForegroundColor Green

# Add all changes
git add .

# Commit changes
$commitMessage = Read-Host "Enter commit message (or press Enter for default)"
if ([string]::IsNullOrWhiteSpace($commitMessage)) {
    $commitMessage = "Update: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
}

git commit -m $commitMessage

# Push to remote
git push origin main

Write-Host "Repository updated successfully!" -ForegroundColor Green

