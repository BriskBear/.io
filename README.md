# .io
_Linux Dotfiles for my profile and aliases._ - I'm keeping this here because it's so cute
 and naiive how this idea got started.

I'll release the Full Description when its a little closer to reality.  

Don't ask for a Gentu/suse/REL etc branch, there are too many branches, the point of this
 is to have crossover functions which allow dynamic OSes.  
These will remap based on what neofetch says your distro is.  
_That's just not set up yet. Soon-coming!_

# Installation

`git clone https://github.com/briskbear/.io ~/.io` Clone the repo to your home directory >
hidden io directory  
`cd && .io/maint/io.CONFIG && . .bashrc` Go to home directory, run the configure script, 
activate .io by sourcing .bashrc

# Learn .io

Yeah, documentation. So I even created this great gen.README blank to make this easier, but
updating and introducing new convenience has really been the focus. Heh. For now use `?` 
to read aliases, I'm slowly working on `io -h` but that comes with documenting blanks. The 
scripts in .io/blanks are the meat and potatoes. _Hopefully_ you'll agree these are named 
well, but I am open to suggestions. To get you going, the coolest thing about .io is the 
package manager commands:  
  - `setup, purge, Query, update`  
    - These call my signature switcher, which calls `OS` to detect which distro you're using
    then uses the keyfile (.io/blanks/keys/_relevant_) to call the appropriate package 
    manager to install your program. (ie. Ubuntu/Debian=>apt, Archlinux=>(yay)/pacman)  
    - I've yet to add REL(etc.) just yet but it will be simple by the framework (Honestly only 
    covered _my_ needs yet right?)  
  - `ssh.INIT` this sets up .ssh/ folders with usable permissions and generates a fresh key
  for you off the bat. I cannot tell you how much time I've wasted trying to get these assigned
  correctly over the years, but you get to spend seconds doing it right the first time.  

## Unimerge  
_The moment I've all been waiting for_

Let's face it, at this point I don't have any real followers yet, so no one has awaited 
this merger, except me. However, it is __a pretty big deal__.  
Moving forward it will just be "how .io works" but .io used to be in different branches 
for different distros and it was getting a lot to maintain and too busy, and it still 
barely did anything!

This used to work for android termux also, until that decided to super-un-linux itself
I am working on bringing that back in but my OS detector does not even work for termux
anymore >.< _so I'll be updating that also_

now it uses direnv and detects your OS and plugs the right verbs! 

## ToDo:  
[Blanks => Binaries](https://www.simplified.guide/bash/compile-script "Compile Bash Script"): This process needs to include VERBOSE `blanks` documentation.
_this would be super nifty for some speed but right now blanks change so often its not 
actually practical. I'll probably solidify __some__ of these as I go_

Vim settings ~> .lua
Logs Consistant:  
 - "LOG=blah" ~> ". ~/.io/config/envar"  
 - "/tmp/.0" ~> ". ~/.io/config/envar"  
 - Do not forget to copy announce/denounce statements!  
