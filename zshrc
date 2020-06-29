# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

DEFAULT_USER=`whoami`
eval $(dircolors ~/.dir_colors)

source ~/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle command-not-found
antigen bundle dircycle
antigen bundle docker
antigen bundle git
antigen bundle ssh-agent
antigen bundle sudo

# Bundles from the zsh-users repo.
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply


# alias getpwd='f() { lpass show -p $1 | clip.exe };f'

alias vpnproxy='f() { docker run -it --rm -p 1080:1080 --cap-add=SYS_ADMIN --cap-add=NET_ADMIN -e NO_UPDATE=1 vpntest $1 };f' 

source ~/.p10k.zsh
