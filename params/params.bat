@echo off

set gitCloneUrl='myCode19112'
set gitCloneBranch=myCode19112
set codeUrl=''

echo 'input params :'%1
set codeUrl=%2

echo codeUrl %codeUrl%

echo gitCloneUrl %gitCloneUrl%
echo gitCloneBranch %gitCloneBranch%

:: input commit message
set /p gitBranch=Please input git pull branch:
echo gitBranch %gitBranch%

pause