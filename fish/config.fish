if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    # echo "hi"
end

function fish_prompt
  printf '%s %s%s%s ' (prompt_pwd) (set_color $fish_color_cwd) ➜ (set_color normal)
end

alias vim=nvim
alias hibernate='echo "Hibernate" && sudo systemctl hibernate'
alias suspend='echo "Suspend then Hibernate" && sudo systemctl suspend-then-hibernate'

fish_add_path ~/.local/bin
fish_add_path /usr/sbin
fish_add_path ~/.fly/bin
