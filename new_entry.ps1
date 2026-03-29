# new_entry.ps1
# Creates today's study journal entry and opens it in VS Code
# Usage: Right-click -> Run with PowerShell  OR  just double-click

$date = Get-Date -Format "yyyy-MM-dd"
$entryPath = Join-Path $PSScriptRoot "daily\$date.md"
$templatePath = Join-Path $PSScriptRoot "templates\daily_template.md"

# Create entry from template if it doesn't exist yet
if (-not (Test-Path $entryPath)) {
    $content = Get-Content $templatePath -Raw
    $content = $content -replace "{{DATE}}", $date
    Set-Content -Path $entryPath -Value $content -Encoding UTF8
    Write-Host "Created: daily\$date.md" -ForegroundColor Green
} else {
    Write-Host "Entry already exists: daily\$date.md" -ForegroundColor Yellow
}

# Open in VS Code
$vsCode = Get-Command "code" -ErrorAction SilentlyContinue
if ($vsCode) {
    code $entryPath
    Write-Host "Opened in VS Code." -ForegroundColor Cyan
} else {
    Write-Host "VS Code not found. Open the file manually:" -ForegroundColor Yellow
    Write-Host "  $entryPath" -ForegroundColor White
}
