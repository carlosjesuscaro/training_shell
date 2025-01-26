#1/usr/bin/bash

# Checking how to receive, call one by one, all and count the arguments given
echo $1
echo $2
echo $@

echo "There are $# arguments"

# Variable creation

var1=Carlos
echo $var1

var2=alianza gano ayer
#echo $var2
# The above line throws an error

var3='alianza gano en ecuador'
echo $var3

# Creating an array
var_array=(1 2 3 4 5)
# shellcheck disable=SC2068
echo ${var_array[@]} # Printing all
echo ${var_array[2]} # Printing only one
echo ${var_array[@]:1:3} # Slicing
var_array+=(99) # Appending one value
echo ${var_array[@]}
declare -A ex_dict=([Peru]="Lima" [Ecuador]="Quito") # Creating  dictionary
echo ${ex_dict[Peru]} # Getting a value based on a key
echo ${!ex_dict[@]} # Getting all the keys from the associative array (a.k. dicitonary)




