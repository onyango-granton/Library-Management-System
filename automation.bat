@echo off
setlocal EnableDelayedExpansion

REM Define the root directory
set rootDir=C:\xampp\htdocs\hms\hms

REM Change to the root directory
cd /d %rootDir%

REM Iterate through all files in the directory and subdirectories
for /r %%f in (*) do (
    REM Get the filename without the path
    set filename=%%~nxf
    REM Perform git add and git commit
    git add "%%f"
    git commit -m "feat: add !filename!"
)

echo Done!