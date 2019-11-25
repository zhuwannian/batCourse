@echo off

set gitCloneUrl=''
set codeUrl=''

set gitCloneUrlBase=git@github.com:zhuwannian/batCourse.git
:: set gitCloneUrlBase=git@github.com:zhuwannian/git_test.git

echo 'input git clone url: '%gitCloneUrlBase%

set codeUrlBase=myCodeMaster19.11.1
:: set codeUrlBase=orderManagementSystem
echo 'input save code url: '%codeUrlBase%

echo "git clone  %gitCloneUrlBase% %codeUrlBase%"
git clone  %gitCloneUrlBase% %codeUrlBase%

cd %codeUrlBase%

pause