# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set up the prompt
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off 
eval $(thefuck --alias fix)

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
alias lu="wkdict"
alias tree='broot'
alias ls='exa -laFh'
alias tldr='/usr/local/bin/tldr'
alias ks='cat kb_shortcuts.txt | less'
alias exa='exa -laFh'
alias sz='source ~/.zshrc'
alias nz='nvim ~/.zshrc'
alias ni='nvim ~/.config/nvim/init.vim'
alias pbcopy=’clip.exe’
alias pbpaste=’clip.exe’

# export TERM="xterm-256color"
echo "Executing .zshrc"
# export EXA_COLORS="da=1;36:fi=1;37"
# export LS_COLORS="fi=36:di=1;32:gm=1;37:ex=1;32"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/home/philt/.cargo/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
# Set Variables
# # Syntax highlight for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# Add no quarantine to brew install commands to avoid triggering gatekeeper.
export HOMEBREW_CASK_OPTS="--no-quarantine"
# Add Locations to $PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Installed LESSPIPE with Brew
export LESSOPEN="|/usr/local/bin/lesspipe.sh %s" LESS_ADVANCED_PREPROCESSOR=1

# Installing Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Smart CD replacement
eval "$(zoxide init zsh)"

# Path to your oh-my-zsh installation.
export ZSH="/home/philt/dotfiles/oh-my-zsh"


# Set custom options for Less Command
# set options for less
# https://tinyurl.com/lesscmd2
# export LESS='--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD --tabs=4 --no-init --window=-4'
# Set colors for less. Borrowed from https://wiki.archlinux.org/index.php/Color_output_in_console#less .
# export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
# export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
# export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
# export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
# export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
# export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
# export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
#
# ZSH_THEME="af-magic"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# PROMPT='%n~$%{$fg_bold[green]%}%p %{$fg_bold[green]%}'
# PROMPT='$fg_bold[blue]%1~$fg_bold[green]%} %L %# '

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( 
    zsh-autosuggestions
    git
    web-search
    sudo
    copydir
    copyfile
    copybuffer
    dirhistory
    history
    jsontools
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias dl='cd /Users/philipgelinas/diveintoansible-lab'
alias mp='cd /Users/philipgelinas/mountpoint'
alias nz='nvim ~/.zshrc'
alias sz='source ~/.zshrc'
alias ni='nvim ~/.config/nvim/init.vim'
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# #Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

function tg() {
  grep -i "$1" ~/.dotfiles/terminal_shortcuts.txt
}

function vg() {
  grep -i --color=always "$1" ~/.dotfiles/vim_shortcuts.txt
}
function mg() {
  grep -i "$1" ~/.dotfiles/mac_shortcuts.txt
}
function exists() {
  command -v $1 >/dev/null 2>&1
}

function cht() {
  curl cheat.sh/$1
}

function dr() {

    if [[ $(wget https://raw.githubusercontent.com/tldr-pages/tldr/main/pages/common/$1.md -O-) ]] 2>/dev/null
      then glow https://raw.githubusercontent.com/tldr-pages/tldr/main/pages/common/$1.md | less 
      elif
	echo "Checking eg..."
	if [[ $(eg $1) ]] #2>/dev/null
	  then eg $1 | less
      else 
	echo "No TLDR EG files for $1"
    fi
}



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /home/philt/.config/broot/launcher/bash/br
