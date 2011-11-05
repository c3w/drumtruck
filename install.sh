#!/bin/bash

cat <<__EOF__
###
## drumTruck INSTALL for OSX
##
__EOF__

if ( ! which ffmpeg ); then { echo "MISSING ffmpeg"; exit 1; }; fi
if ( ! which afplay ); then { echo "MISSING afplay"; exit 1; }; fi
	
echo "installing to ~/bin"
{ mkdir -p ~/bin && cp truck nanopads ~/bin; } || { echo "Error installing to ~/bin"; exit 1; }

echo "adding ~/bin to PATH"
cat >> ~/.bash_profile <<__EOF__
export PATH="\${PATH}:~/bin"
__EOF__

echo "INSTALL COMPLETE.  Relaunch Terminal to get your new PATH environment"
