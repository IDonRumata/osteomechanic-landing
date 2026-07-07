# ============================================================
#  One-time Git + GitHub push setup for the landing page.
#  Run in PowerShell from the project folder (double-click-safe):
#    powershell -ExecutionPolicy Bypass -File .\git-setup.ps1
#  (The script cd-s into its own folder automatically.)
# ============================================================

$RepoUrl = "https://github.com/IDonRumata/osteomechanic-landing.git"

# Make sure we run inside the project folder (where this script lives)
Set-Location -Path $PSScriptRoot

# 1. Remove leftovers from the sandbox (broken .git and test file)
if (Test-Path ".git") { Remove-Item -Recurse -Force ".git" }
if (Test-Path "__t")  { Remove-Item -Force "__t" }

# 2. Init + first commit
git init
git add -A
git commit -m "Osteomechanic landing page"
git branch -M main

# 3. Connect to GitHub and push
git remote remove origin 2>$null
git remote add origin $RepoUrl
git push -u origin main

Write-Host ""
Write-Host "DONE. Next: vercel.com -> Add New -> Project -> Import this repo." -ForegroundColor Green
Write-Host "Framework: Other. Leave Build/Output empty. Deploy." -ForegroundColor Green
