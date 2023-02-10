if status is-interactive
and not set -q TMUX
    exec tmux
end

alias ls='exa --icons'
alias ll='exa -l'

alias fd='fdfind'
alias vi='nvim'
alias open='xdg-open'
# alias config='cd ~/.config && ls'
# unalias ls

set -g fish_prompt_pwd_dir_length 1
set -g fish_prompt_pwd_full_dirs 1
set -g __fish_git_prompt_show_informative_status 0

set -gx EDITOR nvim
set -g code ~/dev
set -g config ~/.config
set -g rust ~/dev/rust

export PATH="$HOME/.cargo/bin:$PATH"

fish_vi_key_bindings
set fish_cursor_insert line
set fish_cursor_default block blink
set fish_cursor_replace_one underscore

#TODO: make this check for a utilities file
# if doesnt exist, create
source $config/fish/functions/utilities.fish
