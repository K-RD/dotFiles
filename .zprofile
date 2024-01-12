export PATH="/opt/homebrew/bin:$PATH"
# exporting Java Path
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# script from coding garden or https://github.com/w3cj/dotfiles/blob/master/.bash_profile
HOST_NAME=stable

source /opt/homebrew/opt/nvm/nvm.sh
# uncomment below line to print nvm version
# nvm use stable
# shopt -s autocd
# shopt -s histappend

export PATH=$PATH:$HOME/bin

export HISTSIZE=5000
export HISTFILESIZE=10000

# bind '"\e[A": history-search-backward'
# bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset

emojis=("👾" "🌐" "🎲" "🌍" "🐉" "🌵")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}

# neofetch is used to print the system information along with the apple logo
neofetch

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="$EMOJI >"




function mkcd()
{
  mkdir $1 && cd $1
}

# Shells
alias tobash="chsh -s /opt/homebrew/bin/bash"
alias tozsh="chsh -s /bin/zsh"

# poweroff
alias po="sudo shutdown now"
alias ps="sudo reboot"


# -------
# Aliases
# -------
# alias v='--version'
alias 🍺="git checkout -b drunk"
alias a='code .'
alias c='code .' # Open current directory in VS Code
alias ..='cd ..' 
alias ...='cd ../..'
alias ....='cd ../../..' 
alias reveal-md="reveal-md --theme night --highlight-theme hybrid --port 1337"
alias ns='npm start'
alias start='npm start'
alias nr='npm run'
alias run='npm run'
alias nis='npm i -S'
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias la="ls -a" #Lists all files in current directory in multiple column format 
alias o="open ." # Open the current directory in Finder
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"


# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gi='git init'
alias gl='git log'
alias glog='git log --oneline --graph'
alias gp='git pull'
alias gpsh='git push'
alias gss='git status -s'
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'
alias remote='git remote add origin'


# ----------------------
# Brew Aliases
# ----------------------
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
alias brewupcask='brew update; brew upgrade --cask; brew cleanup; brew doctor'
alias brewupall='brew update; brew upgrade; brew upgrade --cask; brew cleanup; brew doctor'
alias bd='brew doctor'
alias bi='brew install'
alias bu='brew uninstall'
alias bs='brew search'
alias bsv='brew services'
alias bsvs='brew services start'
alias bsvd='brew services stop'
alias bsvr='brew services restart'
alias bsvl='brew services list'
alias bsvls='brew services list | grep started'
alias bsvlu='brew services list | grep stopped'
alias bsvlr='brew services list | grep restarted'
alias bsvlq='brew services list | grep exited'


# Added by Toolbox App
export PATH="$PATH:/Users/stable/Library/Application Support/JetBrains/Toolbox/scripts"

#looking for .zshrc file if it exists
#if [ -f ~/.zshrc ]; then
#  source ~/.zshrc
#fi
