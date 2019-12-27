@echo off

set gitCloneBranchBase=T19122
:: set gitCloneBranchBase=T19121
set gitCloneUrlBase=git@gitlab.acewill.cn:aiweilian/shopwechat.git
set prefixName=zwndev
set repository=shopwechat
set codeUrlBase=%repository%_%gitCloneBranchBase%
set prefix=%prefixName%%repository%

:: set gitCloneBranchBase=T19121
echo 'input branch: '%gitCloneBranchBase%

::set gitCloneUrlBase=git@gitlab.acewill.cn:aiweilian/shopwechat.git
echo 'input git clone url: '%gitCloneUrlBase%

:: set codeUrlBase=bwl_t191121
echo 'input save code url: '%codeUrlBase%

echo "git clone -b %gitCloneBranchBase% %gitCloneUrlBase% %codeUrlBase%"
git clone -b %gitCloneBranchBase% %gitCloneUrlBase% %codeUrlBase%

cd %codeUrlBase%

for /F %%j in ("%USERNAME%") do ( set userName=%%j)

for /F %%j in ("%COMPUTERNAME%") do ( set computerName=%%j)

echo "git checkout -b %prefix%_%gitCloneBranchBase%"
git checkout -b %prefix%_%gitCloneBranchBase%

echo "git branch"
git branch

pause