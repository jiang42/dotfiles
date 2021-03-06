ZSH=$HOME/.oh-my-zsh

ZSH_THEME="miloshadzic"

DISABLE_AUTO_TITLE="true"

export UPDATE_ZSH_DAYS=7

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

plugins=(cabal git git-extras macports pip python npm osx sudo)

source $ZSH/oh-my-zsh.sh

# Macports path
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Haskell path
export PATH="$HOME/Library/Haskell/bin:$PATH"

# Anaconda path
#export PATH="$HOME/anaconda/bin/:$PATH"

# OPAM configuration
. ~/.opam/opam-init/init.zsh

# virtualenv-wrapper config
export WORKON_HOME=~/.env
source virtualenvwrapper.sh-2.7

export EDITOR='vim'

export LANG=en_US.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Set the terminal name
export set_title(){
   echo -ne "\033]0;$1\007"
}

# config shorthand
alias config_zsh="vim ~/.zshrc"
alias config_vim="vim ~/.vimrc"
alias config_tmux="vim ~/.tmux.conf"
alias config_macports="sudo vim /opt/local/etc/macports/macports.conf"
alias config_emacs="emacs ~/.emacs"

alias cdtmp="cd /tmp"
alias cdws="cd ~/Workspace"
alias cdlab="cd ~/Workspace/laboratory"
alias cdcourse="cd ~/Documents/Courses"

alias clang-format="clang-format -style=llvm"
alias javac="javac -encoding UTF-8"

# turn on extended regular expression support
alias sed="sed -E"
