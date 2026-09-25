@echo off
echo Granting permissions for Port 8080 (API Server)...
netsh http add urlacl url=http://localhost:8080/ user=Everyone
netsh http add urlacl url=http://+:8080/ user=Everyone

echo Granting permissions for Port 2059 (Name Server)...
netsh http add urlacl url=http://localhost:2059/ user=Everyone
netsh http add urlacl url=http://+:2059/ user=Everyone

echo Granting permissions for Port 2057 (Backup Name Server)...
netsh http add urlacl url=http://localhost:2057/ user=Everyone
netsh http add urlacl url=http://+:2057/ user=Everyone

echo Done! Press any key to exit.
pause