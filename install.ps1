# Install these skills into ~/.claude/skills/
$ErrorActionPreference = "Stop"

$src  = Join-Path $PSScriptRoot "skills"
$dest = Join-Path $HOME ".claude\skills"

New-Item -ItemType Directory -Force -Path $dest | Out-Null

$count = 0
Get-ChildItem -Path $src -Directory | ForEach-Object {
    Copy-Item -Path $_.FullName -Destination $dest -Recurse -Force
    Write-Host "  installed: $($_.Name)"
    $count++
}

Write-Host ""
Write-Host "Installed $count skill(s) into $dest"
Write-Host "Restart Claude Code or start a new session to pick them up."
