@echo off

:: input commit message
set /p branchName=git pull origin Branch:
echo "git pull origin branchName %branchName%"

echo git pull origin %branchName%
git pull origin %branchName%
