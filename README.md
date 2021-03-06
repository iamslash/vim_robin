
# Setting on osx

- Install on osx

~~~~
> brew install vim --override-system-vi
> brew install curl
> curl -o - https://raw.githubusercontent.com/iamslash/vim_robin/master/install-all.sh | sh
~~~~

- UnInstall on osx

~~~~
> curl -o - https://raw.githubusercontent.com/iamslash/vim_robin/master/uninstall-all.sh | sh
~~~~

# Setting on windows

- Install on windows (Administrator)

~~~~
> choco install vim
> choco install curl
> curl -o - http://raw.githubusercontent.com/iamslash/vim_robin/master/install-all.bat | cmd.exe
~~~~

- Uninstall on windows

~~~~
> curl -o - http://raw.githubusercontent.com/iamslash/vim_robin/master/uninstall-all.bat | cmd.exe
~~~~

# How to learn vim script

* [Five Minute Vimscript](http://andrewscala.com/vimscript/)
* [Learn Vimscript the Hard Way](http://learnvimscriptthehardway.stevelosh.com/)
* [Scripting the Vim editor, Part 1: Variables, values, and expressions](http://www.ibm.com/developerworks/library/l-vim-script-1/)
* [Scripting the Vim editor, Part 2: User-defined functions](http://www.ibm.com/developerworks/library/l-vim-script-2/)

# How to view help

```
:help help
:help window
```

# How to use shell command in vim

~~~~
:!{cmd}
:r!{cmd}
:w !{cmd}
:grep / :set grepprg
:make / :set makeprg
^\s / :set cscopeprg
= / :set equalprg
gq / :set formatprg
K / :set keywordprg
~~~~

# Famous shortcuts
~~~~
CTRL-N nerd tree toggle
CTRL-W <Left>
CTRL-W <Right>
~~~~

# for c++

- osx
~~~~
> brew install ctags
> ctags -R --sort=1 --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f cpp /usr/include/c++/4.2.1/
~~~~

- windows
~~~~
> choco install ctags
> ctags -R --sort=1 --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f cpp C:\tools\mingw64\x86_64-w64-mingw32\include\c++
~~~~

# for cs 

# for python

# for javascript
