@echo off

set gitCloneBranch=''
set gitCloneUrlBase=''
set codeUrlBase=''
set prefix=zwndev

set gitCloneBranchBase=myCode19.11.1
:: set gitCloneBranchBase=myCode19112
echo 'input branch: '%gitCloneBranchBase%

set gitCloneUrlBase=git@github.com:zhuwannian/batCourse.git
:: set gitCloneUrlBase=git@github.com:zhuwannian/git_test.git

echo 'input git clone url: '%gitCloneUrlBase%

set codeUrlBase=myCode19.11.1
:: set codeUrlBase=orderManagementSystem
echo 'input save code url: '%codeUrlBase%

echo "git clone -b %gitCloneBranchBase% %gitCloneUrlBase% %codeUrlBase%"
git clone -b %gitCloneBranchBase% %gitCloneUrlBase% %codeUrlBase%

cd %codeUrlBase%

:: git checkout -b zwndev_%gitCloneBranchBase%_%USERNAME%_%COMPUTERNAME%

:: https://www.cnblogs.com/zndxall/p/9188300.html
for /F %%j in ("%USERNAME%") do ( set userName=%%j)

for /F %%j in ("%COMPUTERNAME%") do ( set computerName=%%j)

echo "git checkout -b %prefix%_%gitCloneBranchBase%_%userName%_%computerName%"
git checkout -b %prefix%_%gitCloneBranchBase%_%userName%_%computerName%

echo "git branch"
git branch

pause