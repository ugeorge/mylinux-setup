#!/bin/bash

# Emacs initial config
mkdir -p ~/.emacs.d
if [[ ! -e ~/.emacs.d/init.el ]]; then
    echo "(add-to-list 'load-path \"$(pwd)/emacs.d\")
(load \"my-init\")" > ~/.emacs.d/init.el
fi

# touch ~/run_env 
# if ! cmp ~/run_env docker/run_env >/dev/null 2>&1; then
#     cp docker/run_env ~/run_env
# fi
