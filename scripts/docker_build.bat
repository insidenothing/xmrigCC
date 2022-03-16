@echo off
echo "run as administrator"
cd /d %~dp0
git pull
docker build --no-cache .
pause
