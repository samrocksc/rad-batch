#!/bin/sh
# Requirements:
# npm install -g node-vim-inspector
# note that if you're working on an ssl server locally you will probably need to run the node with sudo
tmux split-window -v
tmux list-panes
tmux split-window -t 2 -h
tmux send-keys -t 3 "node --debug-brk server.js" enter
sleep 1
tmux send-keys -t 2 "node-vim-inspector" enter
wait
tmux send-keys -t 1 "vim -nb” enter"
