@echo off
echo "run as administrator"
cd /d %~dp0
cd ..
git pull
docker build --no-cache .
pause
