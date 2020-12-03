# Bash from ruby!

_ls and la done, endless journey to go_
## Description
Right now you're probably like, "what's the point?"  
Right now the point is simply the concept. Check-it
you can already call bash commands from ruby, by quoting with '`' tick marks, but then you gotta 
split it off from line ending marks "\n" an make it neat. Bash (this gem) makes it pretty for you!
Soon I hope to include drawing tools for stuff like tree as well, and then a little ways down the 
road I intend to incorporate all of github:briskbear/.io.

Then I'll be like, what's your login shell? mines ruby BI***

## Usage
Short and sweet right now so I'll put it all right here...  
```
gem install bash-x.x.x.gem  
irb  
>> require 'bash'
=> true
>> Bash.ls("path/to/ls")  
path/to/ls
=>["file", "executable_file*", "a_folder/", "et-all"]
```

You can leave off the '("argument")' to ls the current working directory
```
>>Bash.la("path/to/la")
path/to/la
=>["./", "../", "file", "executable_file*", "a_folder/", ".and_hidden_files", "et-all"]
```  

