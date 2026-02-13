@echo off
cd /d "%~dp0"
git add -A
git commit -m "fix: add install:all script"
git push
pause
