#!/bin/bash

# Setup normal environment.
# Script for setting up Tmux.

tmux new-session -d
tmux split-window -d -t 0 -h
#tmux split-window -d -t 1 -v

tmux send-keys -t 0 'phonelist' enter
tmux send-keys -t 1 'weather_short' enter

tmux select-pane -t 1

NAME=`hostname`
tmux rename $NAME

tmux attach
