@echo off

set gitCloneBranchBase=%1
:: set gitCloneBranchBase=myCode19.11.1
set gitCloneUrlBase=%2
:: set gitCloneUrlBase=git@github.com:zhuwannian/batCourse.git
set codeUrlBase=%3
:: set codeUrlBase=batCourse19.11.1

:: set gitCloneUrlBase=git@gitlab.acewill.cn:baiweilian/eco.git

echo 'input git clone url: '%gitCloneUrlBase%

:: set gitCloneBranchBase=T19121
:: set gitCloneBranchBase=myCode19112
echo 'input branch: '%gitCloneBranchBase%

:: set codeUrlBase=bwl_t19121
:: set codeUrlBase=orderManagementSystem
echo 'input save code url: '%codeUrlBase%

echo "git clone -b %gitCloneBranchBase% %gitCloneUrlBase% %codeUrlBase%"
git clone -b %gitCloneBranchBase% %gitCloneUrlBase% %codeUrlBase%

cd %codeUrlBase%

:: git checkout -b zwndev_%gitCloneBranchBase%_%USERNAME%_%COMPUTERNAME%

:: https://www.cnblogs.com/zndxall/p/9188300.html
for /F %%j in ("%USERNAME%") do ( set userName=%%j)

for /F %%j in ("%COMPUTERNAME%") do ( set computerName=%%j)

git checkout -b zwndev_%gitCloneBranchBase%

pause