# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/innokentiy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstal

# neovim instead of vim
alias vim=nvim

# .dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# autocompletion
zstyle ':completion:*' menu select

#plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
