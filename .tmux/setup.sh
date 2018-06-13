#!/bin/sh
tmux new-session -d -s 'work'
tmux split-window -h -p 30 'watch sensors'
tmux select-pane -t :.1
tmux split-window -v -p 85 'watch free -lh'
tmux split-window -v -p 85 'watch nvidia-smi'
tmux select-pane -t :.0
tmux split-window -h -p 45 'top -o %MEM'
tmux select-pane -t :.0
tmux split-window -v -p 50
tmux new-window
tmux split-window -h -p 50
tmux select-window -t 0
