#!/bin/bash

if grep -Fxq "alias python='/usr/bin/python3.8'" ~/.bashrc; then
   echo "alias python='/usr/bin/python3.8'" >> ~/.bashrc
fi
   
python3 -m pip install --user pipx
python3 -m pipx ensurepath

export WORKON_HOME=~/.local/share/virtualenvs/

if grep -Fxq "WORKON_HOME=~/.local/share/virtualenvs/" ~/.bashrc; then
    echo  "WORKON_HOME=~/.local/share/virtualenvs/" >> ~/.bashrc
fi

pipx install pipenv

