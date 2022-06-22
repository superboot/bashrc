# Import alias collections
for collection in av disk fun git language ls menu networking office packages productivity programming reff shell text-processing vim
do
    . $HOME/.bash/aliases/$collection.alias
done


# If there are local aliases
if [[ -d "$HOME/.bash/local/aliases" ]]; then
    for a in $HOME/.bash/local/aliases/*
    do
        . "$a"
    done
fi

_importsArray[aliases]="$(( ${_importsArray[aliases]} + 1 ))"
