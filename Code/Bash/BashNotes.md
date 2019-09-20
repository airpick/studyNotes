Bash Notes
======

## Section 1
	
### Three rules for a Command: 
1. A command can act alone
2. A command can act on something
3. A command can have options which let the command perform its normal action, but in a different way.

### How do you type a Command? 
#### (Syntax of Commands)
Command (-option) (something)

### Terminal Users & Groups Info
* Every file or directory belongs to some User. 
* Every file or directory is assigned to some Group which contains one or more Users.
* Files can be Readable (r), Writable (w), or Executable (x).

### Permissions should be broken down further...
#### drwxr-xr-x (best veiwed as "r | rwx | r-x | r-X | @", with the @ optional)
* First character describes whether the content is a file or folder (d or -)
* The first set of three characters (rwx) refer to the Read/Write/eXecutable permissions the Owner of the file has. 
* The middle set of three characters refer to the Read/Write/eXecutable permissions the Group that can access this file. 
* The final set of three characters refer to the permissions available for everyone else (is not the Owner or in the Group). 
* The optional character...

### Pressing Tab will auto-complete the command (or do its best to).

## Section 3

1. Terminal usually allows just one command at a time.
2. Shell scripts allow you to combine and run multiple commands together. 
3. Shell scripts also allow you to use if-else statements (conditionals) and loops (iterative statements).

### Script Formatting
#### Top section determines what program you want to use. 
For bash scripts, the following header will be used.
	#! /bin/bash
#### Bottom/Body section will be the actual code/script that will be executed. 
Comments can also be added for a Shell script, so long as the line begins with a hash. 
	#this would be a comment in a bash script