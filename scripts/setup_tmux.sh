#!/bin/sh
tmux new-session -d 'auto_work'
tmux split-window -h 'watch nvidia-smi'
tmux select-pane -t :.1
tmux split-window -v 'watch free -lh'
tmux new-window
tmux -2 attach-session -d
