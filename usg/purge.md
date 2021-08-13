# __Purge__
### Description:  

Purge calls aptitude to remove an application. It then purges all related config files and cleans-up dpkg with auto-remove.

## __Code__
```
#!/bin/bash

sudo apt remove --purge -y $1 | lolcat
sudo apt auto-remove -y | lolcat
clear
echo "$1 Purged"
```
