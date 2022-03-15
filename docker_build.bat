@echo off
echo "run as administrator"
cd /d %~dp0
docker build --no-cache .
pause
