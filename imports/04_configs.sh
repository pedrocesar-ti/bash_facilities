## Invoke the global bash completion
if test "$(uname)" = "Darwin"; then
	source /usr/local/etc/bash_completion 
elif test "$(uname)" = "Linux"; then
	source /usr/share/bash-completion/bash_completion
fi

## Include autocompletion for Amazon API commands
complete -C aws_completer aws

## Include rbenv
export PATH="$HOME/.rbenv/bin:/usr/local/bin/:$PATH"
eval "$(rbenv init -)"

