#! /bin/bash
# Lesson 59 - Exercise 1

myFunction(){
	echo "This function will check if an integer is divisible by 2, 3, or 5."
	echo "Please enter an integer which will be cross-referenced."
	read myVar
	if [[ -n ${myVar//[0-9]/} ]]; then
		echo "You did not enter an integer."
	else
		for i in {2,3,5}; do
		if [[ $(($myVar % i)) -eq 0 ]]; then
			echo "This integer is divisible by ${i}."
		else
			echo "This integer is not divisble by ${i}."
		fi
	done
	fi
}

myFunction