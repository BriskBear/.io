# __set.BLANKS__
### Description:  
  _0. Clear existing blks and ps1 from /tmp (ramdisk)_  
  1. Copy static .blanks directory to /tmp/blks  
  2. Copy config/PS1.5 to /tmp/ps1  
  3. Create .io/blanks link to /tmp/blks ( commonly called scripts for speed )

### ~~Parameters:~~  

__N/a__

### Examples:  

[` ./set.BLANKS `](#Examples "Assumes pwd='$HOME/.io'")  

_This script is called by [Prepdot](usg/Prepdot.md 'Prepdot READme') so ` setCFG ` also accomplishes this_

## __Code__
```
     1	#!/bin/bash
       
     2	rm -r /tmp/blks /tmp/ps1 &>>/tmp/.0
     3	cp -r $HOME/.io/.blanks/ /tmp/blks
     4	cp $HOME/.io/config/PS1.5 /tmp/ps1
       
     5	if [ ! -d $HOME/.io/blanks ]
     6	then
     7	    ln -s /tmp/blks $HOME/.io/blanks
     8	fi
       
     9	echo "Blanks set to RAMDisk"
```
