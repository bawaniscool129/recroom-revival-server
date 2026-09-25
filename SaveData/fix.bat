@echo off
netsh http add urlacl url=http://localhost:8080/ user=Everyone
netsh http add urlacl url=http://+:8080/ user=Everyone
pause