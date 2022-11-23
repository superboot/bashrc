#set -x
# ↓↓↓ Preamble
#     ~/.bashrc: executed by bash(1) for non-login shells.
#     see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
#     for examples
# ↑↑↑ END Preamble
# ↓↓↓ NON-INTERACTIVE CHECK
# If not running interactively, don't do anything
[ -z "$PS1" ] && return
# ↑↑↑ END NON-INTERACTIVE CHECK
# ↓↓↓1 IMPORTS
# ↓↓↓ Imports array
# This array keeps track of what has been imported, by having an incromenter at the end of scripts to be imported.
declare -A _importsArray
# ↑↑↑ END Imports array
# ↓↓↓2 OLD FUNCTIONS
. "$HOME/.bash/.bash_functions"
# ↑↑↑2 END OLD FUNCTIONS
# ↓↓↓2 GIT
. "$HOME/.bash/.bash_git-helper-functions"
# ↑↑↑2 END GIT
# ↓↓↓2 DOCKER
. "$HOME/.bash/.bash_docker-helper-functions"
# ↑↑↑2 END DOCKER
# ↓↓↓2 UTILITY FUNCTIONS
if [[ ! -v IMPORTED_UTILITIES_SUCCESS ]]; # If we haven't imported it yet, import it, but only once.
then
    . $HOME/.bash/.bash_utility_functions && IMPORTED_UTILITIES_SUCCESS=true # Load in the utility functions file. Lots of handy stuff here.
fi
# ↑↑↑2 END UTILITY FUNCTIONS
# ↓↓↓2 ALIASES
if [ -f ~/.bash/.bash_aliases ]; then
    . ~/.bash/.bash_aliases
fi
# ↑↑↑2 END Aliases
# ↓↓↓2 BASH COMPLETION
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
# ↑↑↑2 END BASH COMPLETION
# ↓↓↓2 DYNAMIC PROMPT
. ~/.bash/.bash_dynamic_prompt_functions # Loads the supporting functions for the dynamic prompt.
# ↑↑↑2 END DYNAMIC PROMPT
# ↓↓↓2 BOOKMARKS
# setup filesystem path bookmarks
. ~/.bash/local/.bash_places
# ↑↑↑2 END BOOKMARKS
# ↓↓↓2 CD AND MARK SYSTEM.
# Include the 'cd' overriding mark system functions.
##  NOTE: this script calls the printSuperbootsInfoBar function from above in the PS1 section.
. $HOME/.bash/.bash_mark-system
# ↑↑↑2 END CD AND MARK SYSTEM.
# ↓↓↓2 REPL
. $HOME/.bash/.bash_repl
# ↑↑↑2 END REPL
# ↓↓↓2 COMPLETIONS FOR CUSTOM SCRIPTS
# Import the completions for custom scripts.
. $HOME/.bash/.bash_completions
# ↑↑↑2 END COMPLETIONS FOR CUSTOM SCRIPTS
# ↓↓↓ ALPHABET NUMBER
. "$HOME/.bash/.bash_alphabet"
# ↑↑↑ END ALPHABET NUMBER
# ↓↓↓ GOLANG
. "$HOME/.bash/.bash_go-config"
# ↑↑↑ END GOLANG
# ↑↑↑1 END IMPORTS
# ↓↓↓ COLOR VARIABLES SETUP
setColors # Setup the color variables for printing in color.
# ↑↑↑ END COLOR VARIABLES SETUP
# HISTORY CONTROLS ↓↓↓1 #
# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

export HISTSIZE=50000
export HISTFILESIZE=5000000
# Adds time stamp to history.
# notes on format: 
#   %m  --  month (1-12)
#   %d  --  day (1-31)
#   %y  --  Full year (2010)
export HISTTIMEFORMAT="%F %T "
#Update the on-disk history file after each command.
PROMPT_COMMAND="history -a"
# 1↑↑↑ #
# UPDATE WINDOW SIZE#↓↓↓
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# ↓↓↓ COMMAND-MODE BINDINGS
# ↑↑↑\ COMMAND-MODE BINDINGS
#↑↑↑
# LESSPIPE#↓↓↓
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"
#↑↑↑
# ↓↓↓ PROMPT COMMAND (Bash builtin)
#PROMPT_COMMAND='history -a; PS1="$(generatePrompt)"; isItTimeToThrowAParty; printSuperbootsInfoBar'
PROMPT_COMMAND='history -a; printSuperbootsInfoBar'
# ↑↑↑ END PROMPT COMMAND
# ↓↓↓ PROMPT (PS1)
#PS1='|$(echo $?)|$(date +%I:%M:%S)|\u@\h:\w🥛 '
# Move the prompt to alt-j for access when we want it.
PS1='[$(generateExitStatus $?)]\$ ' # Let's keep things simple here.  If you want the prompt hit alt-h.
# ↑↑↑ END PROMPT (PS1)
# ↓↓↓1 PROMPT FUNCTION printSuperbootsInfoBar()
printSuperbootsInfoBar ()
{
    local _s='-----------------------------'
    local bigPadString="$_s$_s$_s$_s$_s$_s$_s$_s$_s" # Create a long line of spaces.
    local promptCallout="$green[ PROMPT ]$normal" # A green "PROMPT" flag to see more easily see the prompt line.
    local time="$(date +%I:%M:%S)"
    local pwd="${PWD/$HOME/\~}"
    local left="$promptCallout $USER@$HOSTNAME:$pwd  "
    local right="  $time"
    local padAmount=$(( COLUMNS - ${#left} - ${#right} ))
    if [[ "${pad:0:1}" == '-' ]]; then
        padAmount=0
    fi
    local pad="${bigPadString:0:$padAmount}" # Get padAmount of pad characters from the long line.
    local prompt="${left}${pad}${right}" # Build the line.
    prompt=${prompt:0:$COLUMNS} # Trim it if it is still to wide.

    echo "$prompt" # The acatul return value of the function.
}
bind -r '"\eh"' # clear any binding for Alt-h
bind -x '"\eh":printSuperbootsInfoBar' # Bind Alt-h to print the prompt.
# ↑↑↑1 END printSuperbootsInfoBar()
# ↓↓↓ COLOR LS
# enable color support of ls
if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
fi
# ↑↑↑ END COLOR LS
# ↓↓↓ EXPORTED ENVIRONMENT VARIABLES (editor, less fix, #mail related vars, printer, etc.)
export EDITOR=vim
export LESS='FiXWR'
export RANGER_LOAD_DEFAULT_RC=FALSE
# Set MAIL evn var:
#MAIL=/var/spool/mail/john && export MAIL
#MAILPATH=/var/spool/mail/john && export MAILPATH
# ↑↑↑ END EXPORTED ENVIRONMENT VARIABLES 
# ↓↓↓ PYENV
export PYENV_ROOT="$HOME/.pyenv"
# ↑↑↑ END PYENV
# ↓↓↓ PATH EXPORTS
# Add to path:
export PATH="$PYENV_ROOT/bin:$PATH:/snap/bin:$HOME/bin:$HOME/local/bin:$HOME/.local/bin"
# ↑↑↑ END PATH EXPORTS
# ↓↓↓ FLOWCONTROL (ctrl-s, ctrl-q anoyance).
# Dissable ctrl-s's binding to flowcontrol's "stop"
stty -ixon
# ↑↑↑ END FLOWCONTROL (ctrl-s, ctrl-q anoyance).
# ↓↓↓ TMUX alt-v paste (Commented out)
# Set alt-v to paste from inside tmux with 'tmux paste-buffer' command.
# . $HOME/.bash/.bash_tmux-paste
# ↑↑↑ END TMUX alt-v paste (Commented out)
# ↓↓↓ DEBUG SWITCH
# The debug logging switch. Used by the db() function found in .bash_utility_functions.
#  DEBUG='' # set to anything turns it on.
#  unset DEBUG # Delete the variable turns it off.
unset DEBUG 
# ↑↑↑ END DEBUG SWITCH
# ↓↓↓ PYENV SPIN-UP
# This wizardry is from pyenv: https://github.com/pyenv/pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
# ↑↑↑ END PYENV SPIN-UP
# ↓↓↓ CHICKEN
#Chicken
#if [[ $(( RANDOM % 10 )) == 1 ]]; then chicken; fi
if [[ -v TMUX ]]; then
    echo -en "\033]0;TMUX\a" #Doesn't work from inside tmux... Dumb. 11/10/21 02:50:pm 
fi
# ↑↑↑ END CHICKEN
# ↓↓↓ LOCAL .bashrc
if [[ -f ~/.bash/local/.bashrc ]]; then
    . ~/.bash/local/.bashrc
fi
# ↑↑↑ END LOCAL .bashrc

