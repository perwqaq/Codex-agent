@echo off
cd /d "%~dp0"
git add -A
git commit -m "docs: update README with Windows/macOS/Linux install commands"
git push
pause
