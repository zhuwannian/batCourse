@echo off

set gitMaster=0 
set isRun=0 
set gitPushBranchName=

echo "git status"
git status

:: input commit message
set /p gitAddFile=Please input git add file:
echo gitAddFile %gitAddFile%
echo git add %gitAddFile%
git add %gitAddFile%

:: input commit message
set /p gitRemark=Please input git commit remark:
echo gitRemark %gitRemark%
git commit -m %gitRemark%

for /F %%m in ('git symbolic-ref --short HEAD') do ( set gitBranch=%%m)
echo current branch name : %gitBranch%

if "%gitBranch%"=="master" (
	echo yes
	if "%gitMaster%"=="1" (
		set gitPushBranchName= 
		set isRun=1
	) else (
		echo 默认是不允许提交master的代码，如果想提交master的代码请gitMaster的值改成1
		set isRun=0
		pause
		rem exit
	)
) else (
	echo NO
	set gitPushBranchName=%gitBranch%
	set isRun=1

)

echo gitPushBranchName %gitPushBranchName%
echo "-isRun-"%isRun%
if "%isRun%"=="1" (
	echo "git push origin %gitPushBranchName%"
	git push origin %gitPushBranchName%

) else (
	pause
)
