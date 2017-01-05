#!/bin/bash

# Script for setting up Tmux
tmux new-session -d
tmux split-window -d -t 0 -h
#tmux split-window -d -t 1 -v

tmux send-keys -t 0 'phonelist' enter
#tmux send-keys -t 1 'vim' enter

tmux select-pane -t 0

NAME=`hostname`
tmux rename $NAME

tmux attach
