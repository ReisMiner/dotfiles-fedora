export ZSH="$HOME/.oh-my-zsh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

function i(){
	"~/.local/share/JetBrains/Toolbox/scripts/idea" $1 > /dev/null 2>&1 &
	disown
}

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
gpg-connect-agent updatestartuptty /bye > /dev/null
