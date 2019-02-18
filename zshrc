export ZSH="/Users/vike/.oh-my-zsh"

# pure
ZSH_THEME=""

plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

alias nvimconf="nvim ~/.config/nvim/init.vim"
alias zshrcconf="nvim ~/.zshrc && source ~/.zshrc"
alias notes="nvim ~/Documents/notes.txt"

alias luarocks="luarocks --lua-dir=/usr/local/opt/lua@5.1"

alias kubectl-onedp="kubectl --kubeconfig /etc/dhc-kubectl-onedp.yaml"

export PATH=/usr/local/sbin:$PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

fd() {
	local dir
	dir=$(find ${1:-.} -path '*/\.*' -prune \
		-o -type d -print 2> /dev/null | fzf +m) &&
		cd "$dir"
}

fh() {
	print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

dv() {
	cd $1
	ls
}

bk() {
	cd ..
	ls
}

