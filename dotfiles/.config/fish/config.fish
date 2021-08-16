if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x YVM_DIR /home/nemesis/.yvm
[ -r $YVM_DIR/yvm.fish ]; and source $YVM_DIR/yvm.fish

fenv source ~/.fish-personal
nvm use 14 >/dev/null 2>&1
