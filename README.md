
# Install

Use curl (for Mac OS X):
~~~~
> brew install vim --override-system-vi
> brew install curl
> curl -o - https://raw.githubusercontent.com/iamslash/vim_robin/master/install-all.sh | sh
~~~~

# UnInstall

Use curl (for Mac OS X):
~~~~
> curl -o - https://raw.githubusercontent.com/iamslash/vim_robin/master/uninstall-all.sh | sh
~~~~

# How to learn vim script

* [Learn Vimscript the Hard Way](http://learnvimscriptthehardway.stevelosh.com/)
* [Scripting the Vim editor, Part 1: Variables, values, and expressions](http://www.ibm.com/developerworks/library/l-vim-script-1/)
* [Scripting the Vim editor, Part 2: User-defined functions](http://www.ibm.com/developerworks/library/l-vim-script-2/)

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

# for c++ (for Mac OS X):
~~~~
> brew install ctags
> ctags -R --sort=1 --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f cpp /usr/include/c++/4.2.1/
~~~~

# for cs 

# for python

# for javascript
