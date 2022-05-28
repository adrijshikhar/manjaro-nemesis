if status is-interactive
    # Commands to run in interactive sessions can go here
end


fenv source ~/.fish-personal

alias l="ls -la"
alias c="code ."

set -x YVM_DIR /home/nemesis/.yvm
[ -r $YVM_DIR/yvm.fish ]; and source $YVM_DIR/yvm.fish
