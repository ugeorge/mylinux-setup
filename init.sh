#!/bin/bash

# Emacs initial config
mkdir -p ~/.emacs.d
if [[ ! -e ~/.emacs.d/init.el ]]; then
    echo "(add-to-list 'load-path \"$(pwd)/emacs.d\")
(load \"my-init\")" > ~/.emacs.d/init.el
fi

if ! grep -Fxq "PATH=" ~/.bashrc; then
    echo "PATH=$PATH:/opt/bin:$HOME/.local/bin" >> ~/.bashrc
fi

if ! grep -Fxq "alias python=" ~/.bashrc; then
    echo "alias python='/usr/bin/python3.8'" >> ~/.bashrc
    echo "alias pydoc='/usr/bin/pydoc3.8'" >> ~/.bashrc
    echo "alias pygettext='/usr/bin/pygettext3.8'" >> ~/.bashrc
fi


# touch ~/run_env 
# if ! cmp ~/run_env docker/run_env >/dev/null 2>&1; then
#     cp docker/run_env ~/run_env
# fi
