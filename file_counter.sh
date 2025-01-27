#!/usr/bin/bash

path=$1
# echo $path
ls_out=$(ls -a $path 2>&1) # Capturing the ls output as an array
#echo $ls_out

function ls_looping {
  local -n arr=$1
  for element in "${arr[@]}"; do
    echo "$element"
  done
}

regex=".*No such file or directory"
if [[ $ls_out =~ $regex ]]; then
  echo "Wrong path. Try again!"
else
  ls_out=( $(ls -a $path) )
  echo "There are ${#ls_out[*]} files on $path"
  ls_looping ls_out
fi