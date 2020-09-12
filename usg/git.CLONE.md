# git.CLONE
### Description:  

Shortcut for clone from github.com/ simply input repo and folder:  
` git.CLONE BriskBear/.io /tmp/.io `

This clones the master branch of this repo into /tmp  
> Not practical unless you are loop-calling some .io/blanks or want to force yourself to update .io on boot _with /tmp configured as such..._

## __Code__
```
#!/bin/bash

REPO='$1'
CP_PATH='$2'

git clone https://github.com/$REPO $2

# So named for the copies it will make to each element in the array you feed it.
# git clone copy
```
