# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Avoid having the User on the prompt
export DEFAULT_USER="$USER"

# Powerlevel Theme
source $HOME/.zsh_theme_powerlevel9k

# Plugins
plugins=(
	git
	git-extras
	web-search
	osx
	zsh-autosuggestions
	zsh-syntax-highlighting
	compleat
	vscode
)

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_aliases
source $HOME/.zsh_functions

# Z extension
. ~/z.sh