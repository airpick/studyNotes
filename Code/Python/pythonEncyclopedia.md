Python Encyclopedia

Built-in Functions

	A

		abs(x)
			Return the absolute value of a number. 
			The argument may be an integer or a floating point number. 
			If the argument is a complex number, its magnitude is returned. 

		all (iterable)
			Return True if all elements of the iterable are true (or if the iterable is empty). Equivalent to: 

				def all(iterable):
					for element in iterable:
						if not element:
							return False
					return True

		ascii (object)
			As repr(), return a string containing a printable representation of an object, but escape the non-ASCII characters in the string returned by repr() using \x, \u, or \U escapes. 
			This generates a string similar to that returned by repr() in Python 2.

	B

		bin (x)
			Convert an integer to a binary string prefixed with "0b". 
			The result is a valid Python expression.
			If x is not a Python int object, it has to define an __index__() method that returns an integer.

			Some examples:

				>>> bin(3)
				'0b11'
				>>>bin(-10)
				'-0b1010'

			If prefix "0b" is desired or not, you can use eith erof the following ways:

				>>> format(14, '#b'), format (14, 'b')
				('0b1110', '1110')
				>>> f'{14:#b}',f'{14:b}'
				('0b1110', '1110')

			Also, see format() for more information.

	C

		class bool ([x])
			Return a Boolean value, i.e. one of True or False. 
			x is converted using the standard truth testing procedure. 
			If x is false or omitted, this returns False; otherwise it returns True.
			The bool class is a subclass of int (see Numeric Types - int, float, complex).
			It cannot be subclassed further. 
			Its only instances are False and True (see Boolean Values).

		class bytearray([source[, encoding[, errors]]])
			Return a new array of bytes. 
			The bytearray class is a mutable sequence of integers in the range 0 <= x < 256.
			It has most of the usual methods of mutable sequences, described in Mutable Sequence Types, as well as most of the methods that the bytes type has (see Bytes and Bytearray Operations).

			The optional source parameter can be used to initialize the array in a few different ways: 
				* If it is a string, you must also give the encoding (and optionally, errors) parameters; bytearray() then converts the string to bytes using str.encode().
				* If it is an integer, the array will have that size and will be initialized with null bytes. 
				* If it is an object conforming to the buffer interface, a read-only buffer of the object will be used to initialize the bytes array.
				* If it is an iterable, it must be an iterable of integers in the range 0 <= x < 256, which are used as the initial contents of the array.

			Without an argument, an array of size 0 is created. 

			See also Binary Sequence Types - bytes, bytearray, memoryview, and Bytearray Objects.

		class bytes([source[, encoding[, errors]]])
			Return a new "bytes" object, which is an immutable sequence of integers in the range 0 <= x < 256. 
			bytes is an immutable version of bytearray - it has the same non-mutating methods and the same indexing and slicing behavior. 

			Accordingly, constructor arguments are interpreted as for bytearray().

			Bytes objects can also be created with literals, see String and Bytes literals.

			See also Binary Sequence Types - bytes, bytearray, memoryview, and Bytearray Objects.

		callable (object)
			Return True if the object in the argument appears callable, False if not. 
			If this returns true, it is possible that a call fails, but if it is false, calling the object will never succeed. 
			Note that classes are callable (calling a class returns a new instance); instances are callable if their class has a __call__() method. 

			New in version 3.2: This function was first removed in Python 3.0 and then brought back in Python 3.2.

		chr(i)
			Return the string representing a character whose Unicode code point integer is i. 
			For example, chr(97) returns the string 'a', while chr(8364) returns the string '€'. 
			This is the inverse of ord().

			The valid range for the argument is from 0 - 1,114,111 (0x10FFFF in base 16). 
			ValueError will be raised if i is outside that range.

		@classmethod
			Transform a method into a class method.

			A class method receives the class as implicit first argument, just like an instance method receives the instance.
			To declare a class method, use this idiom: 

				class C: 
					@classmethod
					def f(cls, arg1, arg2, ...): ...

			The @classmethod form is a function decorator (see the description of Function definitions for details).

			It can be called either on the class (such as C.f()) or on an instance (such as C().f()). 
			The instance is ignored except for its class. 
			If a class method is called for a derived class, the derived class object is passed as the implied first argument. 

			Class methods are different than C++ or Java static methods. 
			If you want those, see staticmethod() in this section.

		compile(source, filename, mode, flags=0, dont_inherit=False, optimize=-1)
			Compile the source into a code or AST object. 
			Code objects can be executed by exec()or eval().
		
			source can either be a normal string, a byte string, or an AST object. 
			Refer to the ast module documentation for information on how to work with AST objects. 

			The filename argument should give the file from which the code was read; pass some recognizable value if it wasn't read from the file ('<string.' is commonly used).

			The mode argument specifies what kind of code must be compiled; it can be 'exec' if source consists of a sequence of statements, 'eval' if it consists of a single expression, or 'single' if it consists of a single interactive statement (in the latter case, expression statements that evaluate to something other tha None will be printed).

			The optional arguments flags and dont_inherit control which future statements (see PEP 236) affect the compilation of source. 
				* If neither is present (or both are zero), the code is compiled with those future statemetns that are in effect in the code that is calling compile().
				* If the flags argument is given and dont_inherit is not (or is zero), then the future statements specified by the flags argument are used in addition to those that would be used anyway.
				* If dont_inherit is a non-zero integer, then the flags argument is it - the future statements in effect around the call to compile are ignored.

			Future statements are specified by bits which can be bitwise ORed together to specify multiple statements. 
			The bitfield required to specify a given feature can be found as the compiler_flag attribute on the _Feature instance in the __future__ module.

			The argument optimize specifies the optimization level of the compiler; the default value of -1 selects the optimization level of the interpreter as given by -O options. 
			Explicit levels are: 
				* 0 (no optimization; __debug__ is true) 
				* 1 (asserts are removed, __debug__ is false) 
				* 2 (docstrings are removed too)

			This function raises SyntaxError if the compiled source is invalid, and ValueError if the source contains null bytes.

			If you want to parse Python code into its AST representation, see ast.parse().

				Note:
					When compiling a string with multi-line code in 'single' or 'eval' mode, input must be terminated by at least one newline character. 
					This is to facilitate detectino of incomplete and complete statements in the code module.

			Changed in version 3.2: 
				Allowed the use of Windows and Mac newlines.
				Also input in 'exec' mode does not have to end in a newline anymore.
				Added the optimize parameter.

			Changed in version 3.5:
				Previously, TypeError was raised when null bytes were encountered in source.

		class complex(real[, imag])
			Return a complex number with the value real + imag*1j or convert a string or number to a complex number. 
			If the first parameter is a string, it will be interpreted as a complex number and the function must be called without a second parameter. 
			The second parameter can never be a string. 
			Each argument may be any numeric type (including complex).
			If imag is omitted, it defaults to zero and the constructor serves as a numeric conversion like int and float. 
			If both arguments are omitted, returns 0j.

				Note: 
					When converting from a string, the string must not contain whitespace around the central + or - operator. 
					For example, complex (1+2j) is fine, but complex('1 + 2j') rases ValueError.

			The complex type is described in Numeric Types - int, float complex.

			Changed in version 3.6: 
				Grouping digits with underscores as in code literals is allowed.

	D

		delattr(object, name)
			This is a relative setattr().
			The arguments are an object and a string. 
			The string must be the name of one of the object's attributes. 
			The function deletes the named attribue, provided the object allows it.
			For example, delattr(x, 'foobar') is equivalent to del x.foobar.

		class dict(**kwarg)
		class dict(mapping, **kwarg)
		class dict(iterable, **kwarg)
			Create a new dictionary. 
			The dict object is the dictionary class. 
			See dict and Mapping Types - dict for documentation about this class. 

			For other containers, see the built-in list, set, and tuple classes, as well as the collections module. 

		dir([object])
			Without arguments, return the list of names in the current local scope. 
			With an argument, attempt to return a list of valid attribues for that object. 

			If the object has a method named __dir__(), this method will be called and must return the list of attributes. 
			This allows objects that implement a custom __getattr__() or __getattribute__() function to customize the way dir() reports their attributes. 

			If the object does not provide __dir__(), the function tries its best to gather ifnromation from the object's __dict__ attribute, if defined, and from its type object. 
			The resulting list is not necessarily complete, and may be inaccurate when the object has a custom __getattr__(). 

			The default dir() mechanism behvaes differently with differnt types of objects, as it attempts to produce the most relevant, rather than complete, information: 
				* If the object is a module object, the list contains the names of the module's attributes. 
				* If the object is a type or class object, the list contains the names of its attributes, and recursively of the attributes of its bases. 
				* Otherwise, the list contains the object's attributes' names, the names of its class' attributes, and recursively of the attributes of its calss' base class. 

			The resulting list is sorted alphabetically. 
			For example: 
				>>> import struct
				>>> dir()  	# show the names in the module namespace
				['__builtins__', '__names__', 'struct']
				>>> dir(struct) 	# show the names in the struct module
				['Struct', '__all__', '__builtins__', '__cached__', '__doc__', '__file__',
					'__initializing__', '__loader__', '__name__', '__package__', 
					'_clearcache', 'calcsize', 'error', 'pack', 'pack_into', 
					'unpack', 'unpack_from']
				>>> class Shape:
						def __dir__(self):
							return ['area', 'perimeter', 'location']
				>>> s = Shape()
				>>> dir(s)
				['area', 'location', 'perimeter']

			Note:
				Becuase dir() is supplied primarily as a convenience for use at an interactive prompt, it tries to supply an interesting set of names more than it tries to supply a rigorously or consistently defined set of names, and its detailed behavior may change across releases. 
				For example, metaclass attributes are not in the result list when the argument is a class. 

		divmod(a, b)
			Take two (non complex) numbers as arguments and return a pair of numbers consisting of their quotient and remainder when using integer division. 
			With mixed operand types, the rules for binary arithmetic operators apply. 
			For integers, the result is the same as (a // b, a % b). 
			For floating point numbers the result is (q, a % b), where q is usually math.floor(a / b) but may be 1 less than that. 
			In any case q* b + a % b is very close to a, if a % b is non-zero it has the same sign as b, and 0 <= abs(a % b) < abs(b). 

	E

		enumerate(iterable, start=0)
			Return an enumerate object. 
			iterable must be a sequence, an iterator, or some other object which supports iteration. 
			The __next__() method of the iterator returned by enumerate() returns a tuple containing a count (from start which defaults to 0) and the values obtained from iterating over iterable. 

				>>> seasons = ['Spring', 'Summer', 'Fall', 'Winter']
				>>> list(enumerate(seasons))
				[(0, 'Spring'), (1, 'Summer'), (2, 'Fall'), (3, 'Winter')]
				>>> list(enumerate(seasons, start=1))
				[(1, 'Spring'), (2, 'Summer'), (3, 'Fall'), (4, 'Winter')]

			Equivalent to:

				def enumerate(sequence, start=0)
					n = start
					for elem in sequence:
						yield n, elem
						n += 1

		eval(expression, globals=None, locals=None)
			The arguments are a string and optional globals and locals. 
			If provided, globals must be a dictionary. 
			If provided, locals can be any mapping object.

			The expression argument is parsed and evaluated as a Python expression (technically speaking, a condition list) using the globals and locals dictionaries as global and local namespace. 
			If the globals dictionary is present and lacks '__builtins__', the current globals are copied into globals before expression is parsed. 
			This means that expression normally has full access to the standard builtins module and restricted environments are propagated. 
			If the locals dictionary is omitted it defaults to the globals dictionary. 
			If both dictionaries are omitted, the expression is executed in the environment where eval() is called. 
			The return value is the result of the evaluated expression. 
			Syntax errors are reported as exceptions. 

			Example: 
				>>> x = 1
				>>> eval('x+1')
				2

			This function can also be used to execute arbitrary code objects (such as those created by compile()). 
			In this case pass a code object instead of a string. 
			If the code object has been compiled with 'exec' as the mode argument, eval()'s return value will be None. 

			Hints: 
				Dynamic execution of statements is supported by the exec() function. 
				The globals() and locals() functions returns the current global and local dictionary, respectively, which may be useful to pass around for use by eval() or exec(). 

			See ast.literal_eval() for a function that can safely evaluate strings with expressions containing only literals. 

		exec(object[, globals,[ locals]])
			This function supports dynamic execution of Python code. object must be either a string or a code object. If it is a string, the string is parsed as a suite of Python statements which is then executed (unless a syntax error occurs). 

			[1] 
				* If it is a code object, it is simply executed. 
				* In all cases, the code that executed is expected to be valid as file input (see the section "File input" in the Reference Manual). Be aware that the return and yield statements may not be used outside of function definitions even within the context of code passed to the exec() function. The return value is None.
				* In all cases, if the optional parts are omitted, the code is executed in the current scope. 
				* If only globals is provided, it must be a dictionary, which will be used for both the globabl and local variables. 
				* If globals and locals are given, they are used for the global and local variables, respectively. 
				* If provided, locals can be any mapping object. Remember that at module level, globals and locals are the same dictionary. 
				* If exec gets two separate objects as globals and locals, the code will be executed as if it were embedded in a class definition. 
				* If the globals dictionary does not contain a value for the key __builtins__, a reference to the dictionary of built-in module builtins is inserted under that key. That way you can control what builtins are available to the executed code by inserting your own __builtins__ dictionary into globals before passing it to exec().

			Note: The built-in functions globals() and locals() return the current global and local dictionary, respectively, which may be useful to pass around for use as the second and third argument to exec(). 

			Note: The default locals act as described for function locals() as follows: modifications to the default locals dictionary should not be attempted. Pass an explicit locals dictionary if you need to see effects of the code locals after function exec() returns.

	F

		filter(function, iterable)
			Construct an iterator from those elements of iterable for which function returns true. iterable may be either a sequence, a container which supports iteration, or an iterator. 
			If function is None, the identity of function is assumed, that is, all elements of the iterable that are false are removed.

			Note that filter(function, iterable) is equivalent to the generator expression (item for item in iterable if function(item)) if function is not None and (item for item in iterable if item) if function is None.

			See itertools.filterfalse() for the complementary function that returns elements of iterable which function returns false.

		class float([x])
			Return a floating point number constructed form a number or string x.

			If the argument is a string, it should contain a decimal number, optionally preceded by a sign, and optionally embedded in whitespace. 
			The optional sign may be '+' or '-'; a '+' sign has no effect on the value produced. 
			The argument may also be a string represnting a NaN (not-a-number), or a positive or negative infinity. 

			More precisely, the input must conform to the following grammar after leading and trailing whitespace characters are removed:
				sign 			::= 	"+" | "-"
				infinity 		::= 	"Infinity" | "inf"
				nan 			::=		"nan"
				numeric_value	::= 	floatnumber | infinity | nan
				numeric_string 	::= 	[sign] numeric_value

			Here floatnumber is the form of a Python floating-point literal, described in Floating point literals. 
			Case is not significant, so, for example, "inf", "Inf", "INFINITY" and "iNfINity" are all acceptable spellings for positive infinity.

			Otherwise, if the argument is an integer or a floating point number, a floating point number with the same value (within Python's floating point precision) is returned. If the argument is outside the range of a Python float, an OverflowError will be raised.

			For general Python object x, float(x) delegates to x.__float__().

			If no argument is given, 0.0 is returned.

			Examples:
				>>> float('+1.23')
				1.23
				>>> float('   -12345\n')
				-12345.0
				>>> float('1e-003')
				0.001
				>>> float('+1E6')
				1000000.0
				>>> float('-Infinity')
				-inf

			The float type is described in Numeric Types -- int, float, complex.

			Changed in version 3.6: Grouping digits with underscores as in code literals is allowed.