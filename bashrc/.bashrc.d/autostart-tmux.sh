if [[ $- == *i* ]] && [[ -z "$TMUX" ]] && [[ -n "$SSH_CONNECTION" ]]; then
    tmux attach-session -t default || tmux new-session -s default
fi
