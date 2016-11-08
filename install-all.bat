@ECHO OFF
REM default variables
SET VIM_HOME=D:\iamslash\.vim
SET VIM_ROBIN_HOME=D:\iamslash\.vim_robin
SET VIM_FILE=D:\iamslash\.vimrc

REM validate arguments
IF EXIST %VIM_HOME% GOTO _ERROR_ALREADY_EXIST_VIM_HOME
IF EXIST %VIM_ROBIN_HOME% GOTO _ERROR_ALREADY_EXIST_VIM_ROBIN_HOME
IF EXIST %VIM_FLIE% GOTO _ERROR_ALREADY_EXIST_VIM_FILE

REM clone vim_robin
git clone git@github.com:iamslash/vim_robin.git %VIM_ROBIN_HOME%
MKLINK %VIM_FILE% %VIM_ROBIN_HOME%\.vimrc
MKDIR %VIM_HOME
MKDIR %VIM_HOME\tags

REM clone Vundle
MKDIR %VIM_HOME\bundle
git clone https://github.com/gmarik/Vundle.vim.git %VIM_HOME%\bundle\Vundle.vim  

REM install
vim +PluginInstall +qall

ECHO Success to install vim_robin
GOTO _END

:_ERROR_ALREADY_EXIST_VIM_FILE
ECHO ERROR)
ECHO   Already exist .vimrc
GOTO _END

:_ERROR_ALREADY_EXIST_VIM_HOME
ECHO ERROR)
ECHO   Already exist .vim
GOTO _END

:_ERROR_ALREADY_EXIST_VIM_ROBIN_HOME
ECHO ERROR)
ECHO   Already exist .vim_robin
GOTO _END

:_END
REM ECHO %VIM_HOME%
