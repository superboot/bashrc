# Import alias collections
for collection in av disk fun git language ls menu networking office packages productivity programming reff shell text-processing vim
do
    . $HOME/.bash/aliases/$collection.alias
done


_importsArray[aliases]="$(( ${_importsArray[aliases]} + 1 ))"
