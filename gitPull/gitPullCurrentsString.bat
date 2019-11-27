@echo off

set gitMaster=0
set isRun=0
set gitPullBranchName=

for /F %%m in ('git symbolic-ref --short HEAD') do ( set gitBranch=%%m)
echo current branch name : %gitBranch%

for /f "tokens=1,2,* delims=_" %%a in ("%gitBranch%") do (
	set saveCodeFile=%%a
	set branchName=%%b
	set c3=%%c
)

echo "saveCodeFile = %saveCodeFile%" "branchName = %branchName%"

:: set gitBranch=zwndev_myCode19.11.1
:: echo %gitBranch:zwndev=kkk% ;1替换为kkk 
:: echo %gitBranch:zwndev_=kkk% ;10替换为kkk 
:: echo %gitBranch:*_=kkk% ;_之前包括_字符串都替换为kkk 

if "%gitBranch%"=="master" (
	echo yes
	if "%gitMaster%"=="1" (
		:: set gitPullBranchName=
		:: set isRun=1
		echo "git pull origin "
		git pull origin
	) else (
		echo 默认是不允许拉取master的代码，如果想拉取master的代码请gitMaster的值改成1
		:: set isRun=0
		pause
		rem exit
	)
) else (
	echo NO
	:: set gitBranch=zwndev_myCode19.11.1
	:: set prefixEmpty=%gitBranch:zwndev_=%
	:: set prefixEmpty=myCode19.11.1
	:: set gitPullBranchName=%prefixEmpty%
	set gitPullBranchName=%branchName%
	:: echo " gitPullBranchName = "%gitPullBranchName%
	set isRun=1
	
	echo "git pull origin %branchName%"
	git pull origin %branchName%

)
:: echo "-gitPullBranchName-"%gitPullBranchName%
:: echo "-isRun-"%isRun%
:: if "%isRun%"=="1" (
::	echo "git pull origin %gitPullBranchName%"
::	git pull origin %gitPullBranchName%
:: ) else (
::	pause
::)




