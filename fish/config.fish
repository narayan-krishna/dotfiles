if status is-interactive
and not set -q TMUX
    exec tmux
end

alias ls='exa --icons'
alias ll='exa -l --icons'

alias fd='fdfind'
alias vi='nvim'
alias open='xdg-open'
alias c='cd ~ && cd $(fd --type d | fzf) && ls'
alias cr='cd $(fd --type d | fzf) && ls'
alias v='vi $(fd --type f | fzf)'
alias cat='bat'
alias ff_config='vi /home/knara/snap/firefox/common/.mozilla/firefox/cpqtldne.default/chrome/userChrome.css'

# alias config='cd ~/.config && ls'
# unalias ls

set -g fish_prompt_pwd_dir_length 1
set -g fish_prompt_pwd_full_dirs 1
set -g __fish_git_prompt_show_informative_status 0

set -gx EDITOR nvim

set -g code ~/dev #LAUNCHPOINT
set -g config ~/.config #LAUNCHPOINT
set -g rust ~/dev/rust #LAUNCHPOINT

export PATH="$HOME/.cargo/bin:$PATH"

fish_vi_key_bindings
set fish_cursor_insert line
set fish_cursor_default block blink
set fish_cursor_replace_one underscore

set --universal nvm_default_version v18.15.0

#TODO: make this check for a utilities file
# if doesnt exist, create
source $config/fish/functions/utilities.fish
source $config/fish/launch/launch.fish

fish_ssh_agent
