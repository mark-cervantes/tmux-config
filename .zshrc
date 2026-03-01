# For automatically starting tmux on terminal open
# Check if we're already inside a tmux session
if [ -z "$TMUX" ]; then
  # We're not in a tmux session
  if tmux has-session -t default 2>/dev/null; then
    # Generate a unique session name
    SESSION_NAME="term_$$"
    # Create a new grouped session linked to default AND attach in one step.
    # destroy-unattached is set via -x so it takes effect only after we're attached.
    tmux new-session -t default -s "$SESSION_NAME" \; \
      set-option destroy-unattached on || exec $SHELL
  else
    # Default session doesn't exist, create it
    tmux new-session -s default || exec $SHELL
  fi
fi

# Attach to a named tmux session group (or create it)
# Usage: t [session-name]
# Each call opens a new grouped view into the session — independent window focus
t() {
  local session="${1:-default}"
  if tmux has-session -t "$session" 2>/dev/null; then
    tmux new-session -t "$session"
  else
    tmux new-session -s "$session"
  fi
}

# Interactive session picker — select or create a session, then switch into it
# as a grouped session (independent view). Uses tmux-switch-grouped script.
tp() {
  local sessions new_option target

  # Only list "real" sessions — hide term_* grouped siblings
  sessions=$(tmux list-sessions -F "#{session_name}" 2>/dev/null \
    | grep -v "^term_")
  new_option="[new session]"

  if [[ -n "$sessions" ]]; then
    target=$(printf '%s\n%s\n' "$sessions" "$new_option" | fzf --prompt="session> " --height=40% --no-sort)
  else
    target="$new_option"
  fi

  [[ -z "$target" ]] && return 0

  if [[ "$target" == "$new_option" ]]; then
    echo -n "new session name: "
    read -r target
    [[ -z "$target" ]] && return 0
  fi

  tmux-switch-grouped "$target"
}
