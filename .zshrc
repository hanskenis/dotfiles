# homebrew completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# git autocomplete
autoload -Uz compinit && compinit

# minpac path
export PATH=$PATH:~/.vim/pack/minpac/start/fzf/bin

# cargo path
export PATH="$HOME/.cargo/bin:$PATH"

# flutter path
export PATH="$HOME/Code/flutter/bin/:$PATH"

# user bin path
export PATH="$HOME/bin/:$PATH"

# use rg for fzf
export FZF_DEFAULT_COMMAND='rg --files'

# LC_ALL
export LC_ALL=en_US.UTF-8

# mysql
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# aliases
alias ls="ls -FHG"
alias ll="ls -al"
alias ln="ln -v"
alias mkdir="mkdir -p"
alias e="$EDITOR"
alias v="$VISUAL"
alias serve="python3 -m http.server"

#compdef g
compdef g=git

# g()
# No arguments: 'git status'
# With arguments: act like git
g() {
	if [[ $# -gt 0 ]]; then
		git "$@"
	else
		git status
	fi
}

. /usr/local/opt/asdf/asdf.sh
#. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

# starship prompt: https://starship.rs/
eval "$(starship init zsh)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
