# Fish shell configuration
# Equivalent to my old .zshrc

set -g fish_greeting
set -gx PATH /usr/local/bin $HOME/.local/bin $HOME/go/bin /usr/local/go/bin $HOME/.cargo/bin $HOME/.influxdb $PATH
set -gx PATH $HOME/.bun/bin $PATH
set -gx PATH $HOME/.local/share/pnpm $PATH
set -gx EDITOR /usr/sbin/nvim
set -gx VISUAL /usr/sbin/nvim
set -gx BUN_INSTALL "$HOME/.bun"
set -gx PNPM_HOME "$HOME/.local/share/pnpm"

starship init fish | source
zoxide init fish | source

alias claude-personal="CLAUDE_CONFIG_DIR=~/.claude-personal claude"
alias claude-lab3="CLAUDE_CONFIG_DIR=~/.claude-lab3 claude"
alias fishconfig="nvim ~/.config/fish/config.fish"
alias vim="nvim"
alias cal="cal --sunday"
alias cls="clear"
alias cin="xclip -selection clipboard -in"
alias cout="xclip -selection clipboard -out"
alias hs='history | sed "s/^[0-9][0-9]* //g" | fzf | cin'
alias gg="lazygit"
alias ls="eza -w 100 --color=always --icons=always --sort=extension --group-directories-first"
alias l="ls --long --all"
alias zl="zellij"

# Vim-like navigation
bind \cp up-or-search
bind \cn down-or-search
bind \cw forward-word
bind \ce forward-word # Fish doesn't have exact equivalent to vi-forward-word-end
bind \cb backward-word
bind \e\[Z backward-kill-word # Shift+Tab

# Custom Tab and backtick bindings
bind \t accept-autosuggestion # Tab accepts the grayed-out autosuggestion
bind ` complete # Backtick triggers completion menu (like default Tab behavior)

# Custom function to list contents on directory change
function custom_chpwd --on-variable PWD
    ls
end

if not set -q ZELLIJ
    zl ls
else
    ls
end
