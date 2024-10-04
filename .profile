# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
#if [ -d "$HOME/bin" ] ; then
#    PATH="$HOME/bin:$PATH"
#fi
if [[ -z "$_setupPathAlready" ]]; then
    pathArray=(
        "$HOME/bin"
        "$HOME/bin/favorites"
        "$HOME/bin/go"
        "$HOME/bin/info"
        "$HOME/bin/launchers"
        "$HOME/bin/utils"
        "$HOME/bin/utils/phone"
        "$HOME/bin/utils/text"
    )
    pathString="${pathArray[*]}"
    pathString="${pathString// /:}" # Delimit the string with colons instead of spaces.
    export PATH="$pathString:$PATH" # Prepend the path elements onto the existing PATH.

    export _setupPathAlready=true
fi

# To enable xdg-open url handling of Zotero and Obsidian URIs as defined in ~/.local/share/applications/*.desktop files with the x-scheme-handler mimetype.
export XDG_CURRENT_DESKTOP=MATE

