#!/bin/bash



# Print the current script's directory
# Three cases:
# $0 is symlink
# $0 is relative path
# $0 is absolute path
printScriptDir (){  
    # case of a symbolic link
    if [ -h "$1" ]; then
        # the following readlink command works at least on MacOsX
        realPath=$(readlink "$1") 
        realDir=$(dirname "$realPath")
    # case of an absolute path        
    elif [ '/' = "${1:0:1}" ]; then
        realDir=$(dirname "$1")
    # case of an assumed relative path        
    else
        realPath="$(pwd)/$1"
        realDir=$(dirname "$realPath")
        
        # normalize path
        pushd "$realDir" > /dev/null
        realDir=$(pwd)
        popd > /dev/null
    fi
    
    echo $realDir
}



# display it
printScriptDir "$0"

# or store it in a variable
realDir=$(printScriptDir "$0")
echo "realDir=$realDir";
