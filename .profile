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

# Source the path functions file to set up PATH
if [[ -f "$HOME/.bash/.bash_path_functions" ]]; then
    . "$HOME/.bash/.bash_path_functions"
    setPath
fi

# To enable xdg-open url handling of Zotero and Obsidian URIs as defined in ~/.local/share/applications/*.desktop files with the x-scheme-handler mimetype.
export XDG_CURRENT_DESKTOP=MATE


if [ -e /home/john/.nix-profile/etc/profile.d/nix.sh ]; then . /home/john/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
