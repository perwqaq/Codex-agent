@echo off
cd /d "%~dp0"
git add -A
git commit -m "feat: add 8-agent skills for Codex/Trae/Cursor"
git push
pause
