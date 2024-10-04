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
    export PATH="$(echo $HOME/bin{,/launchers,/utils,/info,/favorites} | tr ' ' ':')":$PATH
    export _setupPathAlready=true
fi
# Environment vars for nabi (korean text)
export XIM=nabi
export XIM_ARGS=
export XIM_PROGRAM=/usr/bin/nabi
export XMODIFIERS="@im=nabi"
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim

# To enable xdg-open url handling of Zotero and Obsidian URIs as defined in ~/.local/share/applications/*.desktop files with the x-scheme-handler mimetype.
export XDG_CURRENT_DESKTOP=MATE

