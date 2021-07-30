# __Prepdot__
### Description:  

1. Runs _.io_ initialization script to...  
    1. Copy _.io_ config files from ` ~/.io/config/ ` to their individual destinations  
      _specified in config/[.Locations](usg/.Locations.md)_  
        1. Also Archives current config to ` $HOME/.defaults.tbz2 `  

    2. run set scripts to move FAST things to RAMDisk and set PS1  
      _little scripts used often (as part of PS1 etc.) and the PS1 script itself_  

### ~~Parameters:~~  

__N/a__  

### Examples:  
  - (from ` $HOME `):  
    ` .io/Prepdot `  

  - (anywhere, after Prepdot run once and ` setAl `):  
    ` setCFG `

## __Code__
```
#!/bin/bash

declare -A locations
declare -A RAMDisks

ERRLOG="$HOME/.io/logs/Prepdot.md"

source $HOME/.io/config/.Locations
source $HOME/.io/config/.RAMDisks

if [ ! -f $ERRLOG ]
then
    mkdir ~/.io/logs
    echo generate > $ERRLOG
fi

printf "  \n # Begin $HOSTNAME :: $(date) \n\`\`\`" >> $ERRLOG

#echo "${locations[@]}" | tee $ERRLOG -a
#for t in ${!locations[@]}
#do
#  echo ${locations[$t]}| tee $ERRLOG -a
#done

for l in ${!locations[@]}
do
	printf  "${locations[$l]} SAVED STATE >> ~/.defaults.tbz2\n" | tee $ERRLOG -a
	sudo tar -cjvf - ${locations[$l]} >> ~/.defaults.tbz2 --remove-files -P
	printf "$l to ${locations[$l]}\n"|tee $ERRLOG -a

  if [ $l = '.bashrc' ]
  then
#      printf '\n```  \n' >> $ERRLOG
      cp -vrT $HOME/.io/config/$l ${locations[$l]} >> $ERRLOG 2>&1
#      printf '\n```  \n' >> $ERRLOG
  else
#      printf '\n```  \n' >> $ERRLOG
      sudo cp -v $HOME/.io/config/$l ${locations[$l]} >> $ERRLOG 2>&1
#      printf '\n```  \n' >> $ERRLOG
  fi
done

#for r in ${!RAMDisks[@]}
#do
#  ~/.io/blanks/set.RAMDISK ""
#done
$HOME/.io/set.BLANKS
$HOME/.io/set.RUBY
$HOME/.io/set.FONTS

printf "\`\`\`  \n # End $HOSTNAME :: $(date) \n" >> $ERRLOG

# sudo apt install -y autojump
unset ERRLOG

#####
#   Next generation will have a separate keyfile { rcfile='path', etc. }
# thusly it will batch install rcfiles for expandability
```
