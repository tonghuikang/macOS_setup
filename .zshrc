# initialise oh-my-zsh
ZSH_DISABLE_COMPFIX=true
export ZSH="/Users/$USER/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# loaded plugins
plugins=(
  git
)

###############
### ALIASES ###
###############

# editing zshrc
alias zzzc="cat ~/.zshrc"
alias zzz="nano ~/.zshrc"
alias zzzs="source ~/.zshrc"

# shortcuts
alias o="open ."
alias c="clear"
alias h='history'
alias sha1='openssl sha1'

# conda and jupyter notebook
alias jn="jupyter notebook"
alias jnc="jupyter nbconvert --to script *.ipynb"
alias clist="conda info --envs"
alias ss="source /usr/local/anaconda3/etc/profile.d/conda.sh"
alias sa="conda activate"
alias sd="conda deactivate"

# easier file removal
alias rmtmp="rm -rf /tmp/*"
rmdl() {
  mkdir -p ~/tmp1; mkdir -p ~/tmp2; mkdir ~/Downloads/before-dummy-folder; touch ~/Downloads/dummy-file;
  mv ~/Downloads/before-* ~/tmp1/; mv ~/Downloads/* ~/tmp2; rm ~/tmp2/dummy-file;
  mv ~/tmp2 ~/Downloads/before-$(date "+%y-%m-%d_%H-%M-%S"); mv ~/tmp1/* ~/Downloads/;
  rmdir ~/tmp1 && rmdir ~/Downloads/before-dummy-folder;
}

# file count
alias lscount="ls -l . | egrep -c '^-'"

# cloud related
alias gcpfr="gcloud functions logs read"
alias azfp="func azure functionapp publish"

# networking related
alias catssh="cat ~/.ssh/id_rsa.pub"
alias lsssh="cat ~/.ssh/known_hosts"
alias rmssh="rm ~/.ssh/known_hosts"
alias sshln="ssh -N -L localhost:8888:localhost:8888"

# git related
alias gp="git pull"
alias gs="git status"
alias ga="git add "
alias gc="git commit -m "
alias ghj="git add . && git status && git commit -m 'no comment'"
alias ghjk="git add . && git status && git commit -m "auto" && git push heroku master"
alias ggwp="git pull && git status && git add . && git commit -m 'dump' && git push"
alias gcm="git checkout master"
alias ggc="git add . && git commit -m dump"

# cd shortcuts
alias cd..='cd ..'
alias cdd="cd ~/Desktop"
alias cdh="cd ~"
alias cdr="cd /"
alias cddl="cd ~/Downloads"
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'

# applications
alias cf="caffeinate"
alias typo='open -a "Typora"'
alias code="open -a /Applications/Visual\ Studio\ Code.app"
alias p="python"
alias hg="history | grep"

# pwd of a file
pwdd() {
  old=`pwd`;new=$(dirname "$1");
  if [ "$new" != "." ];
    then cd $new; fi;file=`pwd`/$(basename "$1"); cd $old; echo $file;
}

# python with tracing
alias pyt="python -m trace --ignore-dir=\$(python -c 'import sys ; print(\":\".join(sys.path)[1:])')\":\$HOME/lib64:\$HOME/lib:/usr\" --ignore-module=\"common_validation,parse_utils,plot_utils\" -t "

# competitive programming, require location with scripts
alias cx="./run_cpp.sh"
alias px="./run_py.sh"
pxa() { autoflake --in-place --remove-all-unused-imports "$1".py }
alias gg="git add . && git commit -m "dump""

alias gen="python3 sample_gen.py"
alias cfgen="python3 sample_crawl_cf.py"

#############
### PATHS ###
#############

# from wget
export PATH=/usr/local/Cellar/pypy3.9-v7.3.12-macos_arm64/bin:$PATH
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

# from htop
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

# from git
export PATH="/usr/local/opt/gettext/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/gettext/lib"
export CPPFLAGS="-I/usr/local/opt/gettext/include"

# activate conda environment
#source /usr/local/anaconda3/etc/profile.d/conda.sh

# ssh
alias dev="sft ssh devsharedcpp2"
alias q='sft login && ssh -t devbox "tmux a"'
alias q2='ssh -t 34.67.99.38 "tmux a"'

alias t="touch"

export PATH=/usr/local/Cellar/pypy3.9-v7.3.12-macos_arm64/bin:$PATH
export PATH=/Users/htong/Library/Python/3.8/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/usr/local/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/usr/local/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
#        . "/usr/local/Caskroom/miniforge/base/etc/profile.d/conda.sh"
#    else
#        export PATH="/usr/local/Caskroom/miniforge/base/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


alias ppd="pip install . && python -m fastapi_poe"
alias ppc="pre-commit run --all"
alias pph="ngrok http 8080"
