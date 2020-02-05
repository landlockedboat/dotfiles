export ZSH="$HOME/.oh-my-zsh"
# pure
ZSH_THEME=""

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

fpath+=("$HOME/.nvm/versions/node/v10.18.1/lib/node_modules/pure-prompt/functions")
autoload -U promptinit; promptinit
prompt pure

alias nvimconf="nvim ~/.config/nvim/init.vim"
alias zshrcconf="nvim ~/.zshrc && source ~/.zshrc"

dv() {
	cd $1
	ls
}

bk() {
	cd ..
	ls
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvmç
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# cd to home by default (WSL does not do this)
cd
