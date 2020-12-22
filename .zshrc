# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Start configuration added by Zim install {{{
#
# User configuration sourced by interactive shells
#

# -----------------
# Zsh configuration
# -----------------

#
# History
#

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

#
# Input/output
#

# Set editor default keymap to emacs (`-e`) or vi (`-v`)
bindkey -v

# Prompt for spelling correction of commands.
#setopt CORRECT

# Customize spelling correction prompt.
#SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}


# --------------------
# Module configuration
# --------------------

#
# completion
#

# Set a custom path for the completion dump file.
# If none is provided, the default ${ZDOTDIR:-${HOME}}/.zcompdump is used.
#zstyle ':zim:completion' dumpfile "${ZDOTDIR:-${HOME}}/.zcompdump-${ZSH_VERSION}"

#
# git
#

# Set a custom prefix for the generated aliases. The default prefix is 'G'.
#zstyle ':zim:git' aliases-prefix 'g'

#
# input
#

# Append `../` to your input for each `.` you type after an initial `..`
#zstyle ':zim:input' double-dot-expand yes

#
# termtitle
#

# Set a custom terminal title format using prompt expansion escape sequences.
# See http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Simple-Prompt-Escapes
# If none is provided, the default '%n@%m: %~' is used.
#zstyle ':zim:termtitle' format '%1~'

#
# zsh-autosuggestions
#

# Customize the style that the suggestions are shown with.
# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

#
# zsh-syntax-highlighting
#

# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Customize the main highlighter styles.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md#how-to-tweak-it
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[comment]='fg=10'

# ------------------
# Initialize modules
# ------------------

if [[ ${ZIM_HOME}/init.zsh -ot ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  # Update static initialization script if it's outdated, before sourcing it
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
source ${ZIM_HOME}/init.zsh

# ------------------------------
# Post-init module configuration
# ------------------------------

#
# zsh-history-substring-search
#

# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Bind up and down keys
zmodload -F zsh/terminfo +p:terminfo
if [[ -n ${terminfo[kcuu1]} && -n ${terminfo[kcud1]} ]]; then
  bindkey ${terminfo[kcuu1]} history-substring-search-up
  bindkey ${terminfo[kcud1]} history-substring-search-down
fi

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
# }}} End configuration added by Zim install

alias sudo="sudo env PATH=$PATH"
alias cp="sudo cp"
alias mv="sudo mv"
alias chown="sudo chown"
alias chmod="sudo chmod"
alias ln="sudo ln"
alias apt="sudo apt"
alias service="sudo service"
alias mkdir="sudo mkdir"
alias vim="vim"
alias editor="sudo deepin-editor"
alias r="ranger"
alias sk="sudo screenkey"
alias kill="sudo kill"
alias pkill="sudo pkill"
# alias cat="ccat"
alias cat="sudo bat"
alias vim="nvim.appimage"
alias vi="vim"
alias fd="fdfind"
alias fm="dde-file-manager"

# unalias g
eval "$(thefuck --alias)"

export XMODIFIERS="@im=ibus"   
export GTK_IM_MODULE="ibus"     
export QT_IM_MODULE="ibus"

# ===== set g environment variables =====
export GOROOT="${HOME}/.g/go"
export PATH="${HOME}/bin:${HOME}/.g/go/bin:$PATH"
export G_MIRROR=https://golang.google.cn/dl/
export GOPATH=/home/caoayu/go
# export GOROOT=/usr/local/go
export GOBIN=$GOROOT/bin
export GOPROXY=https://goproxy.cn
export NODE=/usr/local/node/bin
export GOTOOLS=$GOBIN/bin
export EDITOR=vim
export YOUGET=/usr/local/you-get
export MYVIMRC=/home/caoayu/.vim/vimrc
export MYNVIMRC=/home/caoayu/.config/nvim/init.vim
export PATH=$PATH:$GOROOT:$GOPATH:$GOROOT:$GOBIN:$GOPROXY:$NODE:$GOTOOLS:$EDITOR:$YOUGET:$MYVIMRC:$MYNVIMRC

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fzf setting

export FZF_DEFAULT_OPTS='--bind ctrl-e:down,ctrl-u:up --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (cat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
#export FZF_DEFAULT_COMMAND='ag --hidden --follow --exclude .git -g ""'
export FZF_DEFAULT_COMMAND='fdfind --type f'
export FZF_COMPLETION_TRIGGER='\'
export FZF_TMUX=1
export FZF_TMUX_HEIGHT='80%'
export fzf_preview_cmd='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (cat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
#export fzf_preview_cmd='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --theme={} --color=always{} || highlight -O ansi -l {} ||  bat {}) 2> /dev/null | head -500'
# Options to fzf command
export FZF_COMPLETION_OPTS='+c -x'

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
 fdfind --hidden --follow --exclude ".git" . "$1"
}

 # Use fd to generate the list for directory completion
_fzf_compgen_dir() {
 fdfind --type d --hidden --follow --exclude ".git" . "$1"
}
#
