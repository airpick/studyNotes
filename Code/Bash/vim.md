# vim Study Notes
======
More found at https://www.maketecheasier.com/vim-keyboard-shortcuts-cheatsheet/

## The Duality of VIM
VIM has two modes with which you can manipulate files: 
* Edit
* GUI

**Edit** will allow the user to actually type changes, similar to that of any other normal text editor. 
**GUI** will allow the user to review a file, search and replace, save, copy/paste, etc. 

I'll be organizing the features available for VIM in a manner which explains which features affect which view, so that it is easier to determine how to use these

## Edit
There are two main means of editing text in VIM, and deciding which to use depends on user preference for where text should appear with the cursor. 
The user may exit the Edit mode at any time by pressing Esc. 

### `insert`
Press `i` while on the GUI view page to insert new lines of text. 
Typing for this is very intuitive and similar to use for most text programs. 

### `assert`?
This is really just a different version of insert, but it inputs text *after* where the cursor is located.
Press `a` to enter into this type of Edit mode. 

## GUI
### Copying
To copy a single line of text, either of the following will work: 
* `Y`
* `yy`

For multiple lines of text, please use `yN`, where N is the number of lines you would like to copy (or *yank*, as VIM calls it). 
* `y8`  // this will yank 8 lines from where your cursor is

### Paste
To paste whatever text is currently in the buffer, enter `P`. 

### Delete
To remove a line of text your cursor is currently on, enter `dd`. 

### Search
To search for any text in a file, simply include a `/` before it. 
ex: `9'6"` will search for all instances of `9'6"` in a file. 

Press enter to move on to the next hit for each search result. 

### Search and Replace
To search and replace some text for another, use the following: 
`s/some/another/g`

If you would prefer to do the same, only with the entire document you may include the `%` symbol before the `s`. 
ex: `%s/some/another/g` will replace all `some` text with `another` for a file. 

### Undo
To undo whatever the most recent changes were, press `u`. 

### Save
To save your file after editing it, press `:w`. 

### Quit
To exit VIM, press `:q`. 
You can enter this on the same line as Save in order to Save&Quit (`:wq`). 

### Syntax Highlighting
If you would like VIM to display colors in a more reader friendly format for coding, use `:syntax on`. 

### Color Scheme
While we're adjusting for readability, you can also quickly change the color scheme used in VIM using `:colorscheme`. 
There are a number of color schemes which are supported, and you can press `Tab` to cycle through the ones until you find what you like. 
To select the theme, press `Enter`. 

### Editing Files Remotely
To edit a file on a remote server via FTP, try the following: 
`vim ftp://${ipaddress}//Users/John/temp.txt`

If setup correctly, VIM will then prompt you for a username and password. 

## How to Save Your Settings
### Finding Your Home File
To find your Home file enter the following while in GUI mode:
`:echo $home`

### Adding Your Configurations
To add the VIM configurations you would like to take place more perminantly, simply open the `.vimrc` file which responds from your echo, then add the commands which you would have entered on launch. 
ex: `:syntax on` for one line will ensure you always have syntax turned on and ready to use

## Quick Navigation
* `0` - Moves cursor to beginning of line
* `$` - Moves cursor to end of line
* `w' - Moves forward one word (next alphanumeric word)
* `W` - Moves forward one word (delimited by whitespace)
* `b` - Moves backward one word (previous alphanumeric word)
* `B` - Moves backward one word (delimited by whitespace)
* `G` - Move to end of file
* `gg` - Move to beginning of file
