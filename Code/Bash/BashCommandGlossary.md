Bash Command Glossary
======

## man
When followed by a command, it will display information related to the command. 

## killall
This will kill all processes related to the application requested to delete. 

## cal
Provides a calendar of the months and year

## echo
* Prints a string into the command line. 
* When calling a variable within echo and the variable is intended to be a part of a larger word, be sure to use {} brackets to delineate which portion of the string is the variable. 
	* ex:
	`echo "camelCaseWithAVariable${a}Inside"`
* Single quotes, `''`, will interpret values literally and without variable operators. 
	The above variable inside a string would simply print as-is if the command used single quotes instead of double quotes (`""`).

## say
States a string as audio

## whoami
* Displays who the current user is. 

## pwd
* Stands for Present Working Directory.
* Tells the user where they are at the moment (which directory). 

## ls
* Short for List
* Displays all files and folders in the current directory. 

* Here is the order for how these contents are displayed: 
	* `| Permissions | Number of links | Owner of the file | Group the file is assigned to | Filesize | Date last edited | Name of the file/folder |`

### Options
* `-a`
	* option to show all hidden files as well
* `-l`
	* option to show more details on all files displayed by ls
	* stands for "long"

* The Something for this command can be used to display the contents of folders outside of the working directory. 

* For a view of all of the files in the pwd, plus all of the contents of the folders within the pwd, you can use: `ls -R .`.
* This recursive command will all ls to be executed for all folders within the pwd, which is pretty badass.


## clear
* Makes the page look clean (technically executes a bunch of endlines equal to the current size of the terminal's screen)

## file
* It will display a variety of information related to a file (similar to Get Info in the Finder)
* The Something is which file you want information on

## cd
* Changes the Directory the user is currently in. 
* The Something is the directory the user will be navigating to. 

* With no Something, the user will be returned to the Home folder. 
* Using `cd ..` will return the user back one directory.
	* Subsequently, `cd ../..` will return a user back two directories. This can be stacked.

## open
* This command will open a file or image using its default application.
* "open ." will always open the present working directory!
* In a Linux terminal, the command is actually `xdg-open`.

* This can become useful much later, as you can use this to open hidden or restricted folders. 
* A good example of this is `open /bin`, which will open the folder in which all commands are contained from within the root folder.

## touch
* This command will create a file. 
* In order for the file to function more properly, you must also add the extension to the end of the file to designate its type. 
* This could be just about any file type, such as .txt .png or .xls
* Touch also changes the date the file was last edited, which can be useful for scripting.
* You can also use this to create multiple files within the same line.

## mkdir
* This creates a new folder (directory).
* This can also be used to create multiple folders within the same line.

## mv
* This command is move, and it can move files using the following format: move [file] [directory].
* It can also rename a file using the following format: move [old-filename] [new-filename].
* Move does not require `-R` in order to move 

## cp
* This command is copy. 
* It will copy a file using the following format: cp [original-filename] [new-filename].
* You can also copy a file to a different directory using the following: cp [file] [directory].

## rm
* This command will remove a file.
* Simply use the following format: rm [file].

## * (wildcard/star)
* This character can be used to refer to all files or folders which would be applicable for an "object" or a "something". 
* This can proceed or preceed text as well, helping to find all files that begin with the same text. 

## -R
* This is an Option which can be used to recursively impact a file or folder. 
* For instance, if you wanted to copy a folder and all of its contents, you would use the following command: "cp -R ~/Documents ~/Documents-copy". 
* Inversely, you can also remove a folder and all of its contents with `rm -R ~/Documents/This-folder-and-all-its-contents-will-be-gone`. 

## >
* This command is called Redirect. 
* You can use it to push the output of one command to another command. 
	* i.e. echo "this will become the contents" > newtext.txt
	* For the above command, the output of echo will then be written to a text file called "newtext.txt". 
		* If newtext didn't exist previously, it will after this command is run. 
		* If newtext already did exist, it will replace all of its contents with the output.

## >>
* Now we are viewing the Append command. 
* This is really similar to the Redirect command above, only it adds content to pre-existing targets rather than replacing their contents.

* Another useful application for Redirect and Append are to use them to apply the contents of ls to a file. 
	* i.e. `ls -R . >> newtext.txt`
		* This will output the content of the list command to newtext.txt, allowing a user running some type of script to determine where their script could be running into an error. 

## cat
* This command will Concatenate two files into a single file. 
* Running it with only one file as its "something" will simply cause it to echo the contents of the file to Terminal.

* This builds off of itself in that sense, as you can take the output from multiple files and Redirect or Append them to a different/new file. 

## |
* This bar (or command) is Pipe. 
* It allows the user to take the output of one command and use it as the input for a second command.
	* i.e. `ls SomeFolder | less`
		* This command will call for a list of the contents for SomeFolder, but will display those contents within the less command (more on less later, but imagine a similar display to pico, nano, or vim).

## tail
* This will display the last n lines of a file. 

* A smarter way to utilize this is to pipe something which outputs some type of temporary text to the command line instead into tail. 
* Of course, you only want to do this if you just want to view the last few lines of something. 
	* i.e. `ls -lt . | tail -3`
		* This will display only the last three lines of list, rather than a full list of the pwd.

## find
* This will locate all files/folders with the "something" pushed by this command. 
* For instance, performing this in /Documents with just "." as the something will display all files in /Documents, as well as all files in the folders within /Documents. 

* It can be a lot for these requests, so remember that you can cancel a current process using ^C.

* A more singular request for this command is as follows: 
	* `find /Documents -name cool.txt`
		* This will locate any files named cool.txt within the contents of Documents.

* `-name` will allow the user to request a specific file by name when using this command.
* `-type` will allow the user to request all of a specific filetype (i.e. f (file), d (directory)).
* `-maxdepth` restricts the depth of directories executed by `find`.
  * ex: `find . -maxdepth 1 -name '*.ipa' -exec ./resign.sh {} \;`

## ^C
* Cancels an active process. 
* Useful for requests that are running for far too long, etc. 

## grep
* Stands for "Global regular expression print"

* This will search the context of a file for every instance where the "something" can be found. 
	* i.e. `grep $arg sxm.php` will search a file called `sxm.php` for any instance where `$arg` was used. 

* When grep returns a result, it returns the entire line in which the desired query was located (not just the word/string that contained the desired query).
* grep is incredibly versatile when used with the pipe command to help reduce search times.
* grep is case-sensitive, and results will only return as such. 

* `-i` will run grep with an insensitive case search (i.e. it will return "so" with so, So, sO, and SO).
* `-v` will perform a grep search for every line that does not include the "something". 

## awk
* Short for "Aho, Weinberger, and Kernighan", the creators of the commmand.

* This command can parse a file into different sections and call to those sections individually. 
* Think of it like asking only for a particular row or column from an excel spreadsheet (OR TEXT FILE, WITH COLUMNS SEPARATED WITH SPACES). 
* This allows your script to keep a referentiable array if need be. 

* An example for this command is: `awk '{print $2}' spreadsheet.xlsx`
	* This will print only the second column of spreadsheet.xlsx .

* Calling multiple rows/columns simultaneously will cause them to be concatenated unless they are separated by a comma.
	* i.e. `awk {print $1 $2} spread.xlsx` will concatenated. 
	* `awk {print $1,$2} spread.xlsx` will not concatenate.

* To display all columns, simply leave no value next to print or type $0. 
* To display only the last column, use {print $NF} .
* To display the second to last column, use {print ($NF-1)} .

* Calling a row is a bit more complicated. 
* To call only the second row in a table, use the following: `awk 'NR==2 {print $0}' spread.xlsx`.

* `awk 'NR==2,NR==5 {print $0}' spread.xlsx` will print rows 2-5 of spread.xlsx .
* `awk 'NR==2;NR==5 {print $0}' spread.xlsx` will print only rows 2 and 5.

* Using / in the '' section will filter all of the content to only output the designated string. 
	* i.e. `awk '/usa/ {print $0}' spread.xlsx` will print only rows which contain a "usa" string. 
* You can also use an OR within the search by adding a | .
	* i.e. `awk '/usa|ita/ {print $0}' spread.xlsx` will print any row which contains either "usa" or "ita" in its cloumns.

* If you want to display only values that are within a particular column in full rows, use the following format: 
    * `awk '$2~/ita/ {print$0}' spread.txt`
		* This will display rows only if they have some form of the string "ita" in their second column. 

* In order to use awk to first compare two columns, and only output values that are similar, use the following format: 
	* `awk '$2==$3 {print $1,$3}'` spread.txt
		* This will compare columns 2 and 3, then print only the rows that have matches. 
		* When it prints those rows, it will only display columns 1 and 3 of those rows. 

* `awk '{print length($3)} spread.txt` will print the length of each string in column 3. 
* `awk '{print $3,length($3)} spread.txt` will print column 1, followed by the length of each string within column 1. 

* `-F ";"`
	* This option will change the delimiter used to recognize the difference between columns from the default (spaces) to semicolons.

## sudo
* Using sudo before any command will use the command as the root user (superuser permissions). 
* This is useful when overriding rwx permissions. 

* The first time this is used during a session will require the user to enter the password. 

* Using sudo to create a file will cause the file's owner to be root. 

* `sudo bash` will open a new session of the terminal with you signed in as the root user. 
* To exit this type of session, simply type "exit" to return to the previous user. 

## chown
* Short for Change Ownership.
* You can only use this command while logged in as the owner of the file. 

## chgrp
* This command is short for Change Group. 
* As you may imagine, it will change which group a file/folder is assigned to. 

* `Example: "sudo chgrp _newgrp filename.txt"`

## chmod
* Short for Change Mode. 
* This will change the permissions of a file (user, group, or else). 

* Example: `chmod u=rwx g=rwx o=rwx a=rwx filename.txt`
	* `u` = Users
	* `g` = Group
	* `o` = Everyone
	* `a` = All

* This can be shortened greatly using numerical values instead for user, group, and else.
	* `r` = 4
	* `w` = 2
	* `x` = 1
* With a total of seven for each permission (user, group, and else), permissions can instead be assigned using the following format: 
	* `chmod 754 filename.txt`
		* The above command will assign 7 (`rwx`) for users, 5 (`rx`) for groups, and 4 (`r`) for else.

* Alternatively, you can use `chmod +x filename.txt` if you would like to add executable permissions for all. 
	* Conversely, `-rwx` will remove permissions for all. 

* In order to change the ownership of a folder and all of its contents, use the following command format: 
	* `sudo chmod -R user foldername`

## var
* This isn't exactly a command, but more a good way to reference a series of commands used to assign and use a variable.

* To assign a variable, use the following format:
	* `myvar=573`
	* A string, followed by the equal symbol, will allow a variable to be assigned.
* To call the variable after it has been assigned, it can be called when a $ symbol precedes it. 
	* `echo $myvar`

* You can also add brackets {} to help further delineate what the variable being called is. 
* This is a more readable method for calling a variable.
	* `echo ${myvar}`

* Be careful with spaces. Using a space before or after the assignment operator will cause it to not function.
	* `myvar =something`
	* `myvar= something`

* To remove a variable, use the following command
	* `unset myvar`

* This command is much more powerful than it initially appears, since commands can be assigned to the variable. 
* Combining this with operators allows for very flexible script execution.

* A really convenient variable to do is to assign a commonly resourced location to a variable. 
* For instance, I can go into my git folder and assign it to a variable by using the following command.
	* `gitfolder=$(pwd)`
	* With this, I can simply type `cd gitfolder` to quickly change to this location. 

* You can also use variables to set a timestamp for when a code was executed. 
* To do so, assign the variable to date using command substitution. 
* If executed correctly, it will maintain the timestamp from when the variable was assigned. 
	* Correct: `dd=$(date)`		//This will assign the value produced by the command `date` to the variable.
	* Incorrect: `dd=date` 		//This will assign the string `date` to the variable. Calling it will only show the current timestamp.

### IMPORTANT
When assigning strings as a variable, each space will technically be considered a different variable. 
To avoid conflicts when running a script with one of these types of variables, simply wrap the variable in quotes when it is called. 

ex: 
	`if [ "$mySentence" == "A string with multiple spaces." ]; then
		echo "Luckily, these can still be compared with smart quote use"
	fi`

## unset
* Covered in var.
* Using this command will remove a variable value from being assigned to its designated string.

## $
* Called the expansion operator, because it expands the value of a variable.
* Users can also use backtickets instead of $(). 
	* Both of the following commands are functionally the same. 
		* `echo "$(date)"`
		* echo "`date`"
	* Backticks are considered to be an outdated practice though, so stick with $() if possible.

* `$USER` stores the name of the current user by default. 
* `$HOME` stores the location of the home directory by default. 
* `$PATH` by default will display the directories the current shell uses to look for executable files on launch. 

## $(command)
* When a command is stored in a variable, this is called command substitution.

## read
* Another method to assign a variable is the read command. 
* Using the following will allow you to populate a variable. 
	* `read myvar`
	* After this is called, the user will be prompted to type all of the contents to be assigned for the variable. 
* This is valuable because it allows for spaces and other such things to be contained within a variable. 

* `-p`
	* This option will allow you to assign the variable inline instead of after calling the command. 
	* The format used is as follows: 
		* `read -p "what will be assigned to my variable" myvar`

* `-s`
	* This option will have the variable be input in secret. 
	* Very useful for storing passwords and the like. 

* Surprisingly, the above commands can be combined to display some inline text before the secure password is entered. 
* It will look like the following: 
	* `read -sp "Enter your password: " mypass`
	* After entering this command, the user will be prompted to enter their password in the next line. 
	* If you are creating a password within a script using this technique, remember to have it enter a newline prior to its next output so that the code executes more cleanly. 

## Executing Files
* Entering `./` command before any file will run the file as an executable. 

* In truth though, it is not in itself running a command. 
* Think of `./` more as a way of telling the terminal the location of an executable file. 

* This is an important distinction because of how an executable file can be called from within another command. 
* For instance, the following two commands will have the same output (because it will not actually execute the target file). 
	* `file myscript.sh`
	* `file ./myscript.sh`

* To further illustrate this point, you can call a command from a different folder. 
* Say that you are in `~/Documents/Photos`, but you want to call a script from within `~/Documents`. 
* Try the following command to execute that file. 
	* `../myscript.sh`

* And finally, if you want to call an executable from any location, use the following format.
	* `~/Documents/Any/Location/myscript.sh`
	* This will run myscript.sh from whatever pwd you happen to be working in. 


## which
* This command will display where a command is located (because even commands such as ls are actually just scripts and are stored in a folder on the computer). 
* Use the following as an example: 
	* `which ls`
		* This will return `bin/ls` by default. 
		* You could then look at `ls` to determine more on how it actually works based on this location. 
		* By default, however, attempting to open something like ls will simply run the ls program. 

* Even the shell that you use has a location which can be located using this command. 
	* Usually, to run it you'll enter `which bash`, but this can vary depending on your setup. 

## Arithmetic Expressions
* In order for equations to properly compute within a bash script, they need to be called using an expansion operator, followed by the values contained within two sets of parentheticals.

### Examples
* `echo "To calculate a SUM, use $((2 + 2))"`
* `echo "To calculate a PRODUCT, use $((2 * 2))"`
* `echo "To calculate a DIVISION, use $((2 / 2))"`
* `echo "To calculate a REMAINDER, use $((10 % 3))"`
* `echo "To calculate an EXPONENT, use $((3 ** 2))"`

### In order to INCREMENT or DECREMENT an existing variable that has a value of a number, call an expansion for the variable which also uses the variable (think C++). 
* `number1=$(($number1 + 1))`
	* This increments the variable number1 by 1.
* `echo "$((number1++))"`
	* This will print the value of number1 as it is, then add 1 to it after it prints. 
* `echo "$((++number1))"`
	* This will increase the value of number1, then print its value afterwards.
* `echo "$((number1 += 3))"`
	* This will increase the value of number1 by 3 prior to it printing.
		* The same can be applied for subtraction and multiplication.

## if/else/elif Conditions
* ex:
	`if [ 3 -eq 3 ]; then
		echo "YES Equal"
	elif [ 3 -gt 2 ]; then
		echo "Also YES for another reason"
	else
		echo "NO"
	fi`
* All `if` Conditions are closed using `fi`. 
* `else` Conditions will execute if the `if` Condition is not met. 
* `elif` Conditions will execute if a different `if` Conditions (defined within the call) is met instead or alongside the initial `if` Condition.
* `-eq` is measuring if the included numbers are equal to each other.

### IMPORTANT
* When declaring Conditional statements, not including spaces within the [] brackets the command _will_ fail.
	* `[ 3 -lt 5]` will fail
	* `[3 -gt 1 ]` will fail

### Options
* `-eq` = equal to
* `-ne` = not equal to
* `-gt` = greater than
* `-lt` = less than
* `-ge` = greater than or equal to
* `-le` = less than or equal to
* `-e` = checks if a file exists
	* ex:
		`if [ -e myfile.txt; then
			echo "This file exists"
		else
			echo "This file does not exist"
		fi`
* `-d` = checks if a file is a directory
* `-r` = checks if a file is readable
* `-w` = checks if file is writeable
* `-x` = checks if a file is executable
* `-s` = checks if a file is not empty
* `-f` = checks if the file is a regualar file (not a directory)

## for Loops
* ex:
	`for i in {1,2,3,4}
	do		
		echo "hello"
	done`
	This example will print the hello string 4 times. 
* You can also use `..` in order to assign the number of loops as well (`{1..8}`).
* Loops can also be closed early by nesting an if statement within the for loop. 
	* ex:
		`for i in {1, "dog", "danger", "hello", "something", -98}
		do
			echo "the value of i is: $i"
			if [ i == "danger"]; then
				echo "The loop will end early here"
				break
			fi
		done`

### break
* `break` will end any iteration or loop early. 

### For Loops on Files
`for i in ./*
do
	echo "name of the file is: $i"
done`

## While Loops
`while [ $number -le 23 ]
do
	echo "The number has not yet hit 23!"
	number=$(( number + 4 ))
done`

It is important to be careful when executing a `while` loop to insert `break` points in case the script begins to run indefinitely. 
If the script continues to run for an abordinate amount of time, use the `ctrl + C` hotkey to cancel/suspend the script while it is running. 

### sleep
* Adding `sleep` to a script which has iteration will cause the script to pause for a desired amount of time (in seconds). 
* ex: 
	`for i in {1, "dog", "danger", "hello", "something", -98}
		do
			echo "the value of i is: $i"
			if [ i == "danger"]; then
				echo "The loop will end early here"
				sleep 2
			fi
		done`

## case Scripts
* This type of script will allow the user to have multiple scripts which can execute within a single script, depending on the value of a variable. 
* ex: 
	`echo "Select an option:"
	echo "1 if something"
	echo "2 if something else"
	echo "3 if something completely different"
	echo "4 if nothing?"
	read option
	case $option in
		1)
			echo "You chose something"
			;;
		2)
			echo "You chose something else"
			;;
		3)
			echo "You chose something completely different"
			;;
		4)
			echo "You chose nothing?"
			;;
		*)
			echo "You did not choose one of the 4 options"
			;;
		esac`
* You can also combine wildcards with strings for the possible inputs allowed for a case. 
	ex: 
		`*".txt")
			echo "The input is a text file"
			;;`
* Another option is to have the case be any number, any lowercase letter, or any upper-case letter. 
	ex: 
		`[0-9])
			echo "The input was a number"
			;;
		[a-z])
			echo "The input was a lowercase letter"
			;;
		[A-Z])
			echo "The input was an upper-case letter"
			;;`
	* The ranges expressed above are only allowed for single character entries. 
	* To allow ranges for multiple character entries, these will need to be combined and written character by character. 
		ex: 
			`[0-9][0-9][0-9])` will only operate if the user enters a three digit number. 
* Piping is also allowed when assigning a case value. 
	ex: 
		`[0-2] | [8-9])` will operate if the user enters 0, 1, 2, 8, or 9.

## Exit Status
Each command has a series of possible Exit Status' that can be assigned depending on how the command was last resolved (success, error, etc.).
In order to know what the possible exit status' are for any given command, you will need to review its manual. 

To determine the current exit status of the most recent command, perform the following: `echo $?`

These are most valuable in scripting since they will allow the user to evaluate each command and setup breakpoints or exits based on the result of the command irrespective of its output. 

## Functions
* Functions can be defined at the beginning of the script, then are used in a similar manner as Functions are in any coding language (search Object Oriented).
* Example of declaration: 
	* `myDate(){
		echo "Today is :"
		date
		echo "Have a great day!"
	}`
* Example of invocation:
	* `myDate` 		// very simple
* Functions also have Returning Values/Exit Status'. 
	* ex (after running a function): `echo "The return value for my function is $?"`
* You can also manually set the returning value of a function. 
	* `myMultiCaseFunction(){
		echo "Enter an integer:"
		read myInt
		case $myInt in
			1)
				echo "You chose the number 1."
				return 1
				;;
			2)
				echo "You chose the number 2."
				return 2
				;;
			*)
				echo "You chose a number outside of 1 or 2."
				return 69
				;;
			esac
		echo "The return value of this Function is $? ."
	}`
* By default, all variables declared within a Function are still considered Global Variables for Bash scripting (very different than with other programming languages).
	* To have a variable be local to the function, the variable needs to include a leading "local" command.
	ex: `local myVar="someValue"`

### Passing Inputs
* When evoking a Function, you can also pass inputs alongside it and refer to those inputs in the order they are received. 
* Example of reference:
	* `myFunction(){
		echo "Hello $1, first of their name."
		echo "Hello $2, second of their name."
	}
	echo "Who is the first of their name?"
	read nameFirst
	echo "Who is the second of their name?"
	read nameSecond
	myFunction $nameFirst $nameSecond`

## basename
* This command will take a filename with its full path feed and return only the filename itself. 
* ex: 
	`basename /User/Shared/Study/readme.md` will return `readme.md`

## uname
* This will display information relating to the kernal you are running for your bash environment.

### Options
* `-a`: Displays *all* information.
* `-v`: Displays *version*.
* `-r`: Displays *kernal release*. 
