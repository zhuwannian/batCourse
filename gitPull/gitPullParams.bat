@echo off

:: input commit message
set branchName=%1

echo git pull origin %branchName%
git pull origin %branchName%
