@echo off
echo "run as administrator"
cd /d %~dp0
docker image ls
set /p id="Enter Container ID: "
docker run %id% -c /xmrigCC/src/config.json -o 137.184.79.237:3333 -u bxcZxeUM9U63wkeTY6dXRgT97UDhyn3Ye9dLpGfKzgNCNNJCKA9Eq58SRWYhvSHsWzMZRrzNBycP38CTwxN79wGg2a52zRPGS -p x -k --cc-url=142.93.178.80:3344 --cc-access-token=mySecret
pause
