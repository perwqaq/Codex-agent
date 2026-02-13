@echo off
cd /d "%~dp0"
git config user.name "perwqaq"
git config user.email "user@example.com"
git add -A
git commit -m "feat: init 8-agent workflow system"
git branch -M main
git remote add origin https://github.com/perwqaq/Codex-agent.git 2>nul
git push -u origin main
pause
