#! /bin/bash
# Section 3, Exercise 1
# The following objectives will be complete with this script: 
#      - Create 2 .txt files: "1.txt" and "2.txt"
#      - Inside 1.txt, write the content of your pwd in the long list format
#      - Ask the user what prefix he wants to give to the file "1.txt"
#      - Replace the prefix for "1.txt" with the name entered by the user. 

mkdir TempFolder-Script03
cd TempFolder-Script03
touch 1.txt 2.txt
ls -l > 1.txt
echo "What would you like the new prefix of '1.txt' to be? "
read newPrefix
mv 1.txt ${newPrefix}.txt
echo "Done!"