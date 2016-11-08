@ECHO OFF
REM default variables
SET VIM_ROBIN_HOME=D:\iamslash\.vim_robin
SET VIM_FILE=D:\iamslash\.vim

REM validate arguments
IF EXIST %VIM_FILE% GOTO _ERROR_ALREADY_EXIST_VIM_FILE
IF EXIST %VIM_ROBIN_HOME% GOTO _ERROR_ALREADY_EXIST_VIM_ROBIN_HOME

REM clone vim_robin
git clone git@github.com:iamslash/vim_robin.git %VIM_ROBIN_HOME%
mklink %VIM_FILE% %VIM_ROBIN_HOME%\.vim

ECHO Success to install vim_robin
GOTO _END

:_ERROR_ALREADY_EXIST_VIM_FILE
ECHO ERROR)
ECHO   Already exist .vim
GOTO _END

:_ERROR_ALREADY_EXIST_VIM_ROBIN_HOME
ECHO ERROR)
ECHO   Already exist .vim_robin
GOTO _END

:_END
REM ECHO %VIM_FILE%
