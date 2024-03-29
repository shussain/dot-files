#!/bin/bash

# Setup normal environment.
# Script uses Tmux.

tmux new-session -d
tmux split-window -d -t 0 -h
tmux split-window -d -t 1 -v

tmux send-keys -t 0 'moon' enter
tmux send-keys -t 1 'weather_short' enter
tmux send-keys -t 2 'apt-dater' enter

tmux select-pane -t 2

NAME=`hostname`
tmux rename $NAME

tmux attach
