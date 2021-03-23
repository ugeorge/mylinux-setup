#!bin/bash

# Emacs initial config
if [[ ! -e ~/.emacs.d/init.el ]]; then
    mkdir -p ~/.emacs.d
    echo "(add-to-list 'load-path \"$(pwd)/emacs.d\")
(load \"my-init\")" > ~/.emacs.d
fi

touch ~/run_env 
if ! cmp ~/run_env docker/run_env >/dev/null 2>&1; then
    mv docker/run_env ~/run_env
fi
