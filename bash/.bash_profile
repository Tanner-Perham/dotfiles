# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
if [ -f "/home/grumblyghost/.config/fabric/fabric-bootstrap.inc" ]; then . "/home/grumblyghost/.config/fabric/fabric-bootstrap.inc"; fi