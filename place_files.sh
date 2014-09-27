#!/bin/bash

echo "Copying configuration files to ${HOME}."

#TODO: Set PWD to directory of dotfiles if not done already

cp ${PWD}/.bashrc ${HOME}/.bashrc
cp ${PWD}/.bash_profile ${HOME}/.bash_profile
cp ${PWD}/.tmux.conf ${HOME}/.tmux.conf
cp ${PWD}/.ssh/config ${HOME}/.ssh/config

echo "Setup complete."
