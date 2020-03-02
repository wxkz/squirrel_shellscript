#!/usr/bin/env bash

# Better performance

export LC_ALL=C
export LANG=C

export PRG='squirrel'
export VERSION='1.0.0'

# Libs

#heart_archives=(
#    '/usr/libexec/squirrel/core.sh'
#    '/usr/libexec/squirrel/help.sh'
#)
#for heart_load in "${heart_archives[@]}"; do
#    source "$heart_load" || { echo "ERROR ON LOAD \"$heart_load\", ABORT"; exit 1 ;}
#done

# Tests

[[ "$UID" -ne '0' ]] && { echo "Root is required."; exit 1 ;}

# Catching user parameters
 
for entry_parameter; do
    if [[ "$entry_parameter" = '-y' ]]; then
        AUTO_YES='1'
    elif [[ "$entry_parameter" = '-ol' ]] || [[ "$entry_parameter" = 'one-line' ]]; then
        ONE_LINE='1'
    else
        new_argument+=("$entry_parameter")
    fi
done
set -- "${new_argument[@]}" 

# Case for parameter 

case "$1" in
    -i|install)
    
    ;;

    -u|upgrade) 
    
    ;;

    update)

    ;;

    -r|remove)

    ;;

    -s|search)

    ;;

    -V|version) echo "$PRG Version $VERSION" ;;

    #-h|help) _HELP_US ;;

    #*) _HELP_US ;;

esac
