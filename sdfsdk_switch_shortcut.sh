#!/bin/sh

# Thank you Paul Hammant for this example: https://github.com/paul-hammant/switchjdk/blob/master/add_switchjdk_to_bash_profile_safely.sh

NL='
'

touch "Test.txt"

sed -i '' '/function sdfsdk()/d' ~/.bash_profile

sdfsdk_function='function sdfsdk() { version=$1; versions=($(brew search sdfsdk)); link="sdfsdk"; brew unlink sdfsdk; for i in "${versions[@]}"; do if [[ $i != "==>" ]] && [[ $i != "Formulae" ]]; then sdkunlink="${i/limebox\/netsuite\//}"; brew unlink $sdkunlink; fi; done; if [[ $1 != "" ]]; then link="$link@$version"; fi; brew link $link; }'
echo $NL$sdfsdk_function >> ~/.bash_profile

echo "*** Did the above fail with permissions errors? ***"
echo "If yes, you will need to do this after homebrew finishes (once off):"
echo " sh ./usr/local/Cellar/sdfcli/$1/sdfsdk_switch_shortcut.sh"