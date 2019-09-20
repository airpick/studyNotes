#! /bin/bash
# Project A

rm -r ~/Downloads/hotFolder
mkdir ~/Downloads/hotFolder

for i in $(find /Users/mpay/Downloads -type d); do
	
	echo "This is the folder: $i"
	
	for myFile in $i/*; do
		
		if [[ -f "$myFile" ]]; then
			
			echo "  The file inside: $myFile"
			check=$(grep -ni "sports" "$myFile")
			
			if [[ -z $check ]]; then

				echo "  Empty"

			else

				echo "  Found"

				baseName=$(basename $myFile)

				cp "$myFile" ~/Downloads/hotFolder
				echo " " >> ~/Downloads/hotFolder/"$baseName"
				echo "----" >> ~/Downloads/hotFolder/"$baseName"
				echo "$check" >> ~/Downloads/hotFolder/"$baseName"
			
			fi
	
		fi

	done
	
	echo "----"
	echo " "

done

# for myFile in ~/Downloads/*; do
# 	if [[ -f "$myFile" ]]; then
# 		echo "$myFile"
		# check=$(grep -ni "sports" "$myFile")
		# if [[ -z $check ]]; then
		# 	echo "Empty"
		# else
		# 	echo "Found"
		# 	cp "$myFile" ~/Downloads/hotFolder
		# 	echo " " >> ~/Downloads/hotFolder/"$myFile"
		# 	echo "----" >> ~/Downloads/hotFolder/"$myFile"
		# 	echo "$check" >> ~/Downloads/hotFolder/"$myFile"
# 		fi
# 	else
# 		echo "$myFile is not a file..."
# 		echo " "
# 	fi
# done