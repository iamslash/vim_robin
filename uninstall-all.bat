@ECHO OFF
REM default variables
SET VIM_ROBIN_HOME=D:\iamslash\.vim_robin
SET VIM_HOME=D:\iamslash\.vim
SET VIM_FILE=D:\iamslash\.vimrc

REM uninstall VIM_robin
rmdir /S /Q %VIM_ROBIN_HOME%
rmdir /S /Q %VIM_HOME%
del /F /S /Q %VIM_FILE%

ECHO Success to uninstall vim_robin
