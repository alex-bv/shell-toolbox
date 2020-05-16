@echo on

REM "To use script specify drive and passed count"
REM "Example: formatter.bat D: 3"
REM "Note: Drive should be specified with : char after drive letter."

format %1 /P:%2
pause
