@echo off

:: 远程分支名称
set gitCloneBranchBase=zwn1991
:: set gitCloneBranchBase=zwn1991.2

:: 远程项目地址 Repository name
set gitProtected=exchangeRate
:: 赋值 不能有 空格 ，以下一行是错误的写法
:: set gitProtected = exchangeRate

:: 与其他人区分分支仓库【以本人全程小写拼音】
set prefixName=zwndev

:: 远程项目仓库地址
set gitCloneUrlBase=git@github.com:zhuwannian/%gitProtected%.git
:: set gitCloneUrlBase=git@github.com:zhuwannian/exchangeRate.git

:: 远程项目名称
set repository=%gitProtected%
:: 本地代码存放路径
set codeUrlBase=%repository%_%gitCloneBranchBase%
:: 本地分支前缀 
set prefix=%prefixName%%repository%

:: set gitCloneBranchBase=myCode19112
echo 'input branch: '%gitCloneBranchBase%

:: set gitCloneUrlBase=git@github.com:zhuwannian/git_test.git

echo 'input git clone url: '%gitCloneUrlBase%

:: set codeUrlBase=bwl_%gitCloneBranchBase%
:: set codeUrlBase=bwl_t191121

echo 'input save code url: '%codeUrlBase%

echo "git clone -b %gitCloneBranchBase% %gitCloneUrlBase% %codeUrlBase%"
git clone -b %gitCloneBranchBase% %gitCloneUrlBase% %codeUrlBase%

cd %codeUrlBase%

:: git checkout -b zwndev_%gitCloneBranchBase%_%USERNAME%_%COMPUTERNAME%

:: https://www.cnblogs.com/zndxall/p/9188300.html
for /F %%j in ("%USERNAME%") do ( set userName=%%j)

for /F %%j in ("%COMPUTERNAME%") do ( set computerName=%%j)

echo "git checkout -b %prefix%_%gitCloneBranchBase%_%userName%_%computerName%"
git checkout -b %prefix%_%gitCloneBranchBase%

echo "git branch"
git branch

pause