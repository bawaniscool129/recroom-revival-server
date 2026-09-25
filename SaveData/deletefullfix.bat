@echo off
echo Granting permissions for Port 8080 (API Server)...
netsh http delete urlacl url=http://localhost:8080/
netsh http delete urlacl url=http://+:8080/

echo Granting permissions for Port 2059 (Name Server)...
netsh http delete urlacl url=http://localhost:2059/
netsh http delete urlacl url=http://+:2059/

echo Granting permissions for Port 2057 (Backup Name Server)...
netsh http delete urlacl url=http://localhost:2057/
netsh http delete urlacl url=http://+:2057/

echo Done! Press any key to exit.
pause