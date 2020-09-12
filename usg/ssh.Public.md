# __ ssh.Public __
### Description:  

Generates an ssh public key from the first parameter input _[SSH-PrivateKey]_
### Usage:

 ` ssh.Public ~/.ssh/id_rsa `
  "Public Key Calculated"

  _You can find your public key in:_  
  ` ~/.ssh/<private_key_name>.pub `

## __Code__
```
#!/bin/bash

ssh-keygen -y -f $1 > "$HOME/.ssh/$1.pub"
echo "Public Key Calculated"
```
