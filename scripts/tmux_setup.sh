tmux new-session -d
tmux split-window -d -t 0 -v
tmux split-window -d -t 0 -h
tmux split-window -d -t 2 -h

tmux send-keys -t 0 'phonelist' enter
tmux send-keys -t 2 'htop' enter C-l
tmux send-keys -t 1 'vim' enter

tmux select-pane -t 0
tmux rename host

tmux attach
