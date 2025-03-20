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

# .dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# helix
alias hx = 'helix'

# autocompletion
zstyle ':completion:*' menu select

#plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# update mirrors list
alias update-mirrors='export TMPFILE="$(mktemp)"; \
    sudo true; \
    rate-mirrors --save=$TMPFILE --protocol=http --protocol=https arch \
    && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup \
      && sudo mv $TMPFILE /etc/pacman.d/mirrorlist'

# update mirrors list and packages
alias update-all='paru -Syyu --skipreview'

# Go path
export PATH=$PATH:/usr/local/go/bin:/home/innokentiy/bin/superhtml/zig-out/bin

# compiles and runs C++ for competitive 
function compile {
  g++ $1/sol.cpp -Wall -Wextra -Wshadow -DLOCAL -g -fmax-errors=2 -std=c++20 -fsanitize=address,undefined -I/home/innokentiy/code/cpp/algo/include -o $1/sol && $1/sol
}



# Load Angular CLI autocompletion.
source <(ng completion script)
