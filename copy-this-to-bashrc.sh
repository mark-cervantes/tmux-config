# automatically starts 
if [ -z "$TMUX" ]; then # session exist check
  if tmux has-session -t default 2>/dev/null; then

    # Generate a unique session name
    SESSION_NAME="term_$$"

    # Create a new session linked to default (this shares windows)
    tmux new-session -d -t default -s "$SESSION_NAME"

    # Create a new window in this session
    tmux new-window -t "$SESSION_NAME":

    # Attach to the new session
    exec tmux attach-session -t "$SESSION_NAME"

  else
    # Default session doesn't exist, create it
    exec tmux new-session -s default
  fi
fi

