@echo off

set gitCloneBranchBase=T19121
set gitCloneUrlBase=git@github.com:zhuwannian/batCourse.git
set prefixName=zwndev
set repository=batCourseGstash
set codeUrlBase=%repository%_%gitCloneBranchBase%
set prefix=%prefixName%%repository%

:: set gitCloneBranchBase=T19121
echo 'input branch: '%gitCloneBranchBase%

::set gitCloneUrlBase=git@github.com:zhuwannian/batCourse.git
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