#!/bin/sh
# Requirement:
# npm install -g vimdebug
# you can modify this for just about anything, the only requirement is that you have vim open
tmux split-window -v
tmux send-keys -t 2 "sudo node-vim-inspector server.js" enter
sleep 20
tmux send-keys -t 1 "vim -nb" enter
