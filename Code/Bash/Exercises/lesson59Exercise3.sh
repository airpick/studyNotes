#! /bin/bash
# Lesson 59 - Exercise 3

varCreate=0

while [ $varCreate -le 9 ]; do
	touch picture${varCreate}.jpg
	touch text${varCreate}.txt
	((varCreate++))
done

echo "Would you like to change the text files (.txt) or pictures (.jpg)? (t/j)"
read varChoice

if [[ $varChoice == "j" ]]; then
	varChoice=".jpg"
	varMidText="picutre"
	echo "You chose pictures."
elif [[ $varChoice == "t" ]]; then
	varChoice=".txt"
	varMidText="text"
	echo "You chose text files."
else
	echo "You did not chose either 'j' or 't'."
fi

echo "What would you like to add as a prefix for these files?"
read varPrefix

for i in *${varChoice}; do
	mv "$i" "${varPrefix}$i"
done

echo "Would you like to remove all of the files created by this program? (y/n)"
read varDelete

if [[ $varDelete = "y" ]]; then
	rm *picture*
	rm *text*
fi