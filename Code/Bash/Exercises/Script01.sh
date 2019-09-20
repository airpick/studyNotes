#! /bin/bash
# This script is the first used in the lesson. 
# It will ask the user for their name, save the input to a varaible, and repeat the name back to the user. 

echo "What is your name?"
read yourname

# You can instead have the user write their name in the same line as the question by using the format shown below: 
read -p "What is my name? " myname

echo "Hello ${yourname}, nice to meet you."
echo "I am ${myname}."
echo ----------------*