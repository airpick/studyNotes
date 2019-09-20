#! /bin/bash
# This script is the second used in the lesson. 
# This script will ask the user what file they want to open, then will open it. 

echo "Tell me the path of the file you want to open."
read filepath

open $filepath

echo --------------------*