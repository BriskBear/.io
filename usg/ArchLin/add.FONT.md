# __add.FONT__
### Description:  

  1. Adds first parameter (file) to fonts directory
  2. Re-loads font cache

### Parameters:  

  1. Point to the font file (.ttf)

### Examples:  

  - Download a font  
    _for example to ` ~/Downloads/font.ttf `_  
    ` ./add.FONT $HOME/Downloads/font.ttf `  

## __Code__
```
     1	#!/bin/bash
       
     2	NEWFONT=$1
     3	test -d /usr/share/fonts/truetype && echo "fonts!" || echo "No Fonts!" && sudo mkdir /usr/share/fonts/truetype
     4	sudo mv $NEWFONT /usr/share/fonts/truetype/
     5	sleep 1
     6	sudo fc-cache -f -v
```
