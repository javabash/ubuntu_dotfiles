# Set up the prompt

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Customize Prompt(s)
PROMPT='
%1~ %L %# '
RPROMPT='%*'
alias tree='tree -C -L 2'
alias ls='exa -laFh'
alias tldr='/usr/local/bin/tldr'
alias ks='cat kb_shortcuts.txt | less'
alias exa='exa -laFh'
alias sz='source ~/.zshrc'
alias nz='nvim ~/.zshrc'
alias ni='nvim ~/.config/nvim/init.vim'
