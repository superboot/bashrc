. $HOME/.bash/.bash_utility_functions # Import utility functions.
# ↓↓↓ PASTE BIN SPRUNGE
# what ever is piped to this is posted to the sprunge past-bin site.
## used for "post":
pbp () { curl -s -F 'sprunge=<-' http://sprunge.us ; }
## used for "get":
pbg () { curl -s "$1" ; }
# ↑↑↑ END PASTE BIN SPRUNGE
# ↓↓↓ GPG SYMETRIC 
# gpg shorts:
#es () { gpg -o - -a -c ; }
#d () { gpg -o - -d ; } 
# ↑↑↑ END GPG SYMETRIC 
# ↓↓↓ GREPALL (GREP ALL)
# This will grep all files in directoy recursivly for term.
grepall () { find . -type f -exec grep -H "$@" '{}' \; ; } 
# ↑↑↑ END GREPALL (GREP ALL)
# ↓↓↓ COLOR LESS SYNTAX HIGHLIGHTING
#Colors text file based on syntax, and pipes it through less, wich is setup to recieve the color escapes correctly.
cl () { highlight --out-format=ansi $1 | less -R ; }
# ↑↑↑ END COLOR LESS SYNTAX HIGHLIGHTING
# ↓↓↓ RANDOM PREFIX
rp () { randomPrefix=0; until [[ $randomPrefix -gt 100 ]]; do randomPrefix=$(( RANDOM % 1000)); done; echo $randomPrefix ; }
# ↑↑↑ END RANDOM PREFIX
# ↓↓↓ QUICK FILENAME COPY
# Copy the filename of the most recently changed file. 
clf () { echo $(ls -1trh | tail -n1) | xsel -b ; } # Copy latest file in PWD
cld () { echo $(ls -1trh $HOME/doc | tail -n1) | xsel -b ; } # Copy latest file in ~/doc
clu () { echo $(ls -1trh $HOME/uploads | tail -n1) | xsel -b ; } # Copy latest file in ~/uploads
# ↑↑↑ END QUICK FILENAME COPY
# ↓↓↓1 def upto() # move up to any directory
upto () { cd "${PWD/\/$@\/*//$@}" ; }
# ↑↑↑1 END upto
# ↓↓↓ def rn()
rn() {
    # This fucntion move a file to a new prompted for name, with a random prefix for the current dir, and appends the date, and replaces space with dash. 
    # Only works in PWD.
    [[ "$*" != '' ]] && local originalFile="$*" || exit 1
    read -p 'Enter file description: ' input
    { [[ "$input" != '' ]] && local newName="$(randomPrefix)-${input// /-}-"$(date +%Y%m%d)".pdf"; } || exit 1
    mv "$originalFile" "$newName" || echo Error moving file "$originalFile" to "$newName"
}
# ↑↑↑ END def rn()
# ↓↓↓ Change title of terminal x11 window.
title() {
    echo -en "\033]0;${1}\a"
}
# ↑↑↑ END Change title of terminal x11 window.
# ↓↓↓ def listShellOptions()
listShellOptions() {
    { shopt -u | sed 's/off$/'"$red"off"$normal"'/g'; shopt -s | sed 's/on$/'"$green"on"$normal"'/g'; } | sort -d | tr -s ' ' | column -t
}
# ↑↑↑ END def listShellOptions()
# ↓↓↓ def sortu: That uniq'ing pipeline you always need.
sortu() { sort -d | uniq -u; }
# ↑↑↑ END def sortu: That uniq'ing pipeline you always need.
# ↓↓↓ def latestFile()
latestFileInDir() {
    local _DOCSTRING="Returns the name of the file most recently modified in the supplied directory, or PWD if none. (taken from wooledge.org)"
    local _USAGE="Usage: latestFileInDir [dir=.]"
    local  dir
    dir=${1:-.}

    local file latest

    for file in in "${dir}"/*
    do
        if [[ $file -nt $latest ]]; then 
            latest=$file
        fi
    done
    printf '%s\n' "$latest" 
}
# ↑↑↑ END latestFile
defineMegaHelpFunctions()
{
    h()
    {
        if [[ $# -gt 0 ]]; then
            mega-"$1" --help
        else
            mega-help | tail -n+9
        fi
    }
}
_importsArray[functions]="$(( ${_importsArray[functions]} + 1 ))"
