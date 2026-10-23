HISTFILE="$HOME/.local/state/zsh/history"
HISTSIZE=1000
SAVEHIST=1000
mkdir -p "${HISTFILE:h}"

export PATH="$HOME/.pub-cache/bin:$HOME/.jsvu/bin:$PATH"

# gpg-agent as ssh-agent
if (( $+commands[gpgconf] )); then
  unset SSH_AGENT_PID
  if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
    export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
  fi
  export GPG_TTY=$(tty)
  gpg-connect-agent updatestartuptty /bye >/dev/null
fi

(( $+commands[mise] )) && eval "$(mise activate zsh)"
