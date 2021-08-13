# vi.EXEC  
### Usage:  

`vi.EXEC [file_name] [interpreter]`  

#### Example(s):  

`vi.EXEC calculator.rb ruby`  

### Description:  

Jump right into a script, with an auto-shebang. This also immediately adds executable.

 Prompt for a filename if none given
 Use bash shebang if interpreter is not given
 Create the file with shebang
 Edit the file with line-break after the shebang
 Make the file Executable

## __Code__  
```
#!/bin/bash

EXEC="$1"
SHEBANG="#!/usr/bin/env $2"

null_EXEC='Enter a name for the executable file: '
null_SHEBANG='#!/bin/bash'

if [ ! $EXEC ]
then
    printf $null_EXEC
    read EXEC
fi

if [ ! $2 ]
then
    SHEBANG="$null_SHEBANG"
fi

printf "$SHEBANG\n\n" >> $EXEC

vi +3 $EXEC

chmod u+x $EXEC
```
