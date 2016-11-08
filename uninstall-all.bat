@ECHO OFF
REM default variables
SET VIM_ROBIN_HOME=D:\iamslash\.vim_robin
SET VIM_FILE=D:\iamslash\.vim

REM uninstall VIM_robin
rmdir /s /q %VIM_ROBIN_HOME%
del /S %VIM_FILE%

ECHO Success to uninstall vim_robin
