@echo off
netsh http delete urlacl url=http://localhost:8080/
netsh http delete urlacl url=http://+:8080/
pause