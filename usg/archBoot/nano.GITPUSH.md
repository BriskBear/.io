# nano.GITPUSH

### Usage:

> !! This script is aliased in .io/ if using standalone script replace 'gio' with ./nano.GITPUSH

` gio <filename> `
  + [ Answer Potential Prompts ]


### Description:  

To one file:
  1. Edit in nano - Make Changes
  2. git add      - Stage <file> Changes
  3. commit       - Save Changes Point to current ReadMe
  4. pull         - Ensure local conent is latest before upload
  5. push         - Upload the Changes to git

## __Code__
```
#!/bin/bash

# Subject is the file being edited and uploaded.
SBJ=$1 

nano +3 $SBJ
git add $SBJ
git commit -m "[$SBJ.md](usg/$SBJ.md)"
git pull
git push
```
