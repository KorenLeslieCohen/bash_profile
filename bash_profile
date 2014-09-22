export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

  # This function is called in your prompt to output your active git branch.
  function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }

  # This function builds your prompt. It is called below
  function prompt {
    # Define some local colors
    local   PURPLE="\e[0;35m" # This syntax is some weird bash color thing I never
    local   PURPLE='\e[0;35m' # really understood
    local   CHAR="♥"
    # ♥ ☆ - Keeping some cool ASCII Characters for reference

    # Here is where we actually export the PS1 Variable which stores the text for your prompt
    export PS1="\[\e]2;\u@\h\a[\[\e[37;40;1m\]\t\[\e[0m\]]$PURPLE\$(parse_git_branch) \[\e[35m\]\W\[\e[0m\]\n\[\e[0;35m\]$

    # Here is where we actually export the PS1 Variable which stores the text for your prompt
    export PS1="\[\e]2;\u@\h\a[\[\e[37;40;1m\]\t\[\e[0m\]]$PURPLE\$(parse_git_branch) \[\e[35m\]\W\[\e[0m\]\n\[\e[0;35m\]$
      PS2='> '
      PS4='+ '
    }

  