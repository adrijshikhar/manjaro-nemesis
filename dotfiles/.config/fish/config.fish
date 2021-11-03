if status is-interactive
    # Commands to run in interactive sessions can go here
end

nvm use 14 >/dev/null 2>&1

fenv source ~/.fish-personal

alias l="ls -la"
alias c="code ."
