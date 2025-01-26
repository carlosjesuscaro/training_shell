#!/usr/bin/bash

default_shell=$(getent passwd $USER | cut -d: -f7)

if [[ $default_shell = '/usr/bin/bash' ]]; then
  echo "Using BASH"
elif [[ $default_shell = '/usr/bin/zsh' ]]; then
  echo "Using ZSH"
else
  echo "Using weird stuff!"
fi