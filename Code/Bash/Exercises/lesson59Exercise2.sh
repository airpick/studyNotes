#! /bin/bash
# Lesson 59 - Exercise 2

varTextFilesInPWD=0

echo "This program will tell you how many .txt files are currently in the directory it is executed in." 

for i in ./*.txt; do
	((varTextFilesInPWD++))
done

(( varTextFilesInPWD-- ))

if [[ $varTextFilesInPWD -lt 1 ]]; then
	echo "There are no .txt files in the PWD."
elif [[ $varTextFilesInPWD -eq 1 ]]; then
	echo "There is $varTextFilesInPWD .txt file in the PWD."
else
	echo "There are ${varTextFilesInPWD} .txt files in the PWD."
fi