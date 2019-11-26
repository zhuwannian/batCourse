@echo off

set gitMaster=0 
set isRun=0 
set gitPullBranchName=

for /F %%m in ('git symbolic-ref --short HEAD') do ( set gitBranch=%%m)
echo current branch name : %gitBranch%



if "%gitBranch%"=="master" (
	echo yes
	if "%gitMaster%"=="1" (
		set gitPullBranchName= 
		set isRun=1
	) else (
		echo 默认是不允许拉取master的代码，如果想拉取master的代码请gitMaster的值改成1
		pause
		rem exit
	)
) else (
	echo NO
	:: set gitBranch=zwndev_myCode19.11.1
	set prefixEmpty=%gitBranch:zwndev_=%
	:: set prefixEmpty=myCode19.11.1
	set gitPullBranchName=%prefixEmpty%
	set isRun=1

)
echo "-gitPullBranchName-"%gitPullBranchName%
echo "-isRun-"%isRun%
if "%isRun%"=="1" (
	echo "git pull origin %gitPullBranchName%"
	git pull origin %gitPullBranchName%
) else (
	pause
)




