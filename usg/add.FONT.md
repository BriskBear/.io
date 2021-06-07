# add.FONT  
### Usage:  



#### Example(s):  



### Description:  

## __Code__  
```
#!/bin/bash

addfont() {
    # Save the font path to variable
    NEWFONT=$1
    # Ensure the default truetype directory exists
    test -d /usr/share/fonts/truetype && echo "fonts!" || echo "No Fonts!" && sudo mkdir /usr/share/fonts/truetype
    # Copy the font to the system location
    sudo cp $NEWFONT /usr/share/fonts/truetype/
    # Give it a moment, for pity sake!
    sleep 1
    # Reload the fonts cache
    sudo fc-cache -f -v
}

addfont $1
```
