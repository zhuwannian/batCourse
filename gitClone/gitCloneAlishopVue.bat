@echo off

set gitCloneBranchBase=T19113
set gitCloneUrlBase=git@gitlab.acewill.cn:aiweilian/alishop.git
set prefixName=zwndev
set repository=AlishopVue
set codeUrlBase=%repository%_%gitCloneBranchBase%
set prefix=%prefixName%%repository%

echo 'input branch: '%gitCloneBranchBase%

echo 'input git clone url: '%gitCloneUrlBase%

echo 'input save code url: '%codeUrlBase%

echo "git clone -b %gitCloneBranchBase% %gitCloneUrlBase% %codeUrlBase%"
git clone -b %gitCloneBranchBase% %gitCloneUrlBase% %codeUrlBase%

cd %codeUrlBase%


for /F %%j in ("%USERNAME%") do ( set userName=%%j)

for /F %%j in ("%COMPUTERNAME%") do ( set computerName=%%j)

echo "git checkout -b %prefix%_%gitCloneBranchBase%_%userName%_%computerName%"
git checkout -b %prefix%_%gitCloneBranchBase%

echo "git branch"
git branch

pause