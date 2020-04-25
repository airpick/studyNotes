# Python Study Notes

## Table of Contents
1. Development Environments
  * Text Editors
  * Full IDEs
  * Notebooks
2. Data Types
3. Arithmetic Operators
4. Variables
  * Variable Rules
  * Dynamic Typing
    * Pros
    * Cons
5. Strings
  * Indexing
    * Character Position Example
    * Index Example
  * Slicing
  * Escape Characters and Commands

## Development Environments
There are a few different ways to write Python. 
What is chosen depends on which features best suit the author and code being written.

### Text Editors
* Very straight forward, no bells and whistles. 
* Can be customized with plug-ins and add-ons (like Sublime).
* Won't usually be developed with Python in mind. 
* Most popular are Sublime and Atom.

### Full IDEs
* Development Environments designed specifically for Python.
* Larger programs.
* Only community editions are free; pro/enterprise versions are for companies and usually have extra features.
* Designed specifically for Python, with lots of extra functionality.
* Most popular is PyCharm.

### Notebooks
* Great for learning.
* See input and output next to each other.
* Support in-line markdown notes, visualizations, videos, and more. 
* Special file formats that are not `.py`.
* Most popular is Jupyter Notebook.

## Data Types
| Name | Type | Description |
| ---- | ---- | ----------- |
| Integers | int | Whole numbers, such as: 3, 300, 200 |
| Floating Point | float | Numbesr with a decimal point: 2.3, 4.6, 100.0 |
| Strings | str | Ordered sequence of characters: "hello", 'Sammy', "2000", "!shrug" |
| Lists | list | Ordered squence of objects: [10,"hello",200.3] |
| Dictionaries | dict | Unordered Key:Value pairs: {"mykey":"value","name":"Frankie"} |
| Tuples | tup | Ordered immutable sequence of objects: (10,"hello",200.3) |
| Sets | set | Unordered collection of unique objects: {"a","b"} |
| Booleans | bool | Logical value indicating `True` or `False` | 
| None | None | A None value is nothing; excellent as a placeholder |

## Arithmetic Operators
| Operator | Function |
| -------- | -------- |
| `+` | Addition |
| `-` | Subtraction |
| `*` | Multiplication |
| `/` | Division |
| `%` | Remainder |
| `**` | Power |
| `()` | Order of Operations Control |

## Variables
Something which can be assigned a referential value.

### Variable Rules
* Names cannot start with a number. 
* There can be no spaces in the name (use `_` instead). 
* Cannot use the following symbols: `:"',<>/?\|()!@#$%^&*~-+`
* It is considered best practice (according to [PEP8](https://www.python.org/dev/peps/pep-0008/)) that names are lowercase.
* Avoid using words that have special meaning in Python like `list` and `str`. 

### Dynamic Typing
* Python uses Dynamic Typing for its variables. 
* This means you can reassign variables to different data types.
* This makes Python very flexible in assigning data types, this is different than other languages that are `Statically Typed`. 

#### Pros
* Very easy to work with
* Faster development time
#### Cons
* May result in Bugs for unexpected data types!
* You may need to take advantage of the `type()` function to troubleshoot

## Strings
* A sequence of characters enclosed in `""` or `''`. 
* Because strings are `ordered sequences`, it means that we can use `indexing` and `slicing` to grab sub-sections of the string.
* Escape characters are recognized by default (i.e. no changes are needed for `\n` to create a new line).
* Because strings are immutable, executing something like `my_string[0] = 'P'` will not be allowed. 
  * To edit string variables, concatenation will need to be used.

### Indexing
* Indexing notation uses `[]` notation after the string (or variable assigned to the string).
* Indexing allows you to grab a single character from the string.
* These actions use `[]` square brackets and a number index to indicate positions you wish to grab. 
* Reverse indexing is also allowed.

#### Character Position Example
| Character: | h | e | l | l | o |
| Index: | 0 | 1 | 2 | 3 | 4 |
| Reverse Index: | 0 | -4 | -3 | -2 | -1 |

#### Index Example
* `my_string[0]` will grab the first character of the variable `my_string`.
* `my_string[3:6]` will return the fourth through seventh characters of the variable `my_string`.
* `my_string[::2]` will return every second letter of the variable `my_string`.
* `my_string[::-1]` will return the variable `my_string` in reverse.

### Slicing
* Slicing allows you to grab a subsection of multiple characters (a "slice" of the string).
* This has the following syntax: `[start:stop:step]`
  * `start` is a numerical index for the slice start.
  * `stop` is the index you will go up to (but not include). 
  * `step` is the size of the "jump" you will take between each character.

### Escape Characters and Commands
| Command | Function |
| ------- | -------- |
| `\\` | backslash |
| `\'` | single quote |
| `\"` | double quote |
| `\a` | ASCII bell |
| `\b` | ASCII backspace |
| `\f` | ASCII formfeed |
| `\n` | ASCII linefeed |
| `\r` | ASCII carriage return |
| `\t` | ASCII horizontal tab |
| `\v` | ASCII vertical tab |
| `\ooo` | ASCII character with octal value *ooo* |
| `\xhh` | ASCII character with hex value *hh* |

### Concatenation
* To concatenate, use a `+` symbol and add the string needed. 
* You can also replicate the same string by multiplying (`*`) the string.

#### Example 1 - Addition
```
my_string = 'Oh me oh my'
my_string = my_string + 'It is beautiful outside'
```
This will cause `my_string` to become `"Oh me oh myIt is beautiful outside"`.

#### Example 2 - Multiplication
```
my_string = 'zz'
my_string = my_string * 3
```
This will return `"zzzzzz"` for `my_string`.

### String Functions/Methods
| Command | Function |
| ------- | -------- |
| x.upper() | Displays all characters in the string in uppercase. |
| x.lower() | Displays all characters in the string in lowercase. |
| x.split() | Separates each word in a string by the value defined in `()` and displays these in a list.
Default is to use whitespace. |

### String Interpolation
* Really just a fancy way of saying "stick a variable into a string". 
* Two functions or methods can do this: 
  * `.format()` method
  * `f-strings` (formatted string literals)

#### Example 1 - `.format()`
```
print('The {} {} {}.'.format('fox','brown','quick'))
```
This will display `'The fox brown quick.'`, with insertions occuring in the same order they were supplied by `.format()`.

#### Example 2 - `.format()` w/ Indexing
```
print('The {1} {1} {1}.'.format('fox','brown','quick'))
```
This will display `'The brown brown brown.'`, with the second index supplied used for all entries.

#### Example 3 - `.format()` w/ Variable Indexing
```
print('The {q} {b} {f}.'.format(f='fox',b='brown',q='quick'))
```
This will display `'The quick brown fox.'`, as the variables are assigned and allocated accordingly.

#### Example 4 - `.format()` w/ Float Precision
Float formatting follows `"{value:width.precision f}"`.
```
my_var = 100 / 777
# This returns `0.1287001287001287`
print('The result was {m:5.3f}.'.format('m=my_var'))
```
This will return `'The result was  0.129.'`.
Note that there is an extra space before `0.129`, as the width was specified to output 5 characters of value.

#### Example 5 - `f-strings`
```
name = "Michael"
print(f'Hello {name}!')
```
This will return `'Hello Michael!'`. 

## Lists
* Lists are ordered sequences that can hold a variety of object types.
* They use [] brackets and commas to separate objects in the list.
  * `[1,2,3,4,5]`
* Lists support indexing and slicing.
* Lists can also be nested and have a variety of useful methods which can be called off of them. 
* Lists can also concatenate.

### Changing Values
To change a value in a list, simply refer to the value's index.
ex: `my_list[0] = "new value"`

### .append()
Use the `.append()` function to add a new value to an existing list.
ex: `my_list.append("seven")` will add a new string value to the end of `my_list` of `"seven"`. 

### .pop()
Will remove an item from a list.
Default is the last item in the list.

When using this function, it will output the removed item as its result while removing it. 
As such, you can assign items removed with this method to a variable or different list.

### .sort()
Sorts a list (alphabetically if strings, numerically if floats/ints).
This outputs nothing and applies directly to the list it is called for. 

### .reverse()
Opposite of `.sort()`.
