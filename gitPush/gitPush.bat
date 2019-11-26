@echo off

echo "git status"
git status

:: input commit message
set /p gitAddFile=Please input git add file:
echo gitAddFile %gitAddFile%
git add %gitAddFile%

:: input commit message
set /p gitRemark=Please input git commit remark:
echo gitRemark %gitRemark%
git commit -m %gitRemark%


