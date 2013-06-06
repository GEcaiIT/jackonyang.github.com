---
layout: post
title: "python tutorial: basic grammar"
date: 2013-03-02 21:50
comments: true
categories: [python]
---

Contant and Variables
---------------------

#### number

1. integers: default integer can be any large value,
2. floating point,
3. complex numbers.

#### strings

<!--more-->

1. encode and decode: by default, all strings are in unicode.
	if a strictly ASSCII-encoded byte-stream is needed,
	then use `str.encode("ASCII")`
2. multi-lines: a single backslash "\ " at the end of the line indicates
	that the string is continued in the next line, but no newline added.
3. Raw strings: no special processing such as escape sequences are handled.
4. immutable
5. auto concatenated

Control Flows
-------------

1. no switch, use if-elif-else or dictionary instead.
2. you can have an `else` clause for the `while` or `for` loop

{% include_code control flows lang:python control_flows.py %}


Function
--------

1. you can use variables defined outside the function, but not encouraged,
	for it is unclear to readers.
3. default argument must be immutable
5. keyword-only parameters: declared after a starred parameter.

{% include_code functions lang:python functions.py %}

Module and Package
------

1. **avoid** using`from ... import ...` to avoid name clashes.
2. module search path: `sys.path`
3. a module's `__name__` is `__main__` implies that 
	the module is being run standalone.
4. `dir(module_name)` list the identifiers of the module.
5. packages are just folders of modules with a special `__init__.py` file.

Object Oriented and Classes
---------------------------

{% include_code class and inheritance lang:python obj_oriented.py %}

Input and Output
----------------

1. `input(info_text)`, `print(text)`
2. file. `open`,`read`, `write`, `close`
3. pickle.
	`pickle.dump(obj_name, f)`
	`obj_name=pickle.load(f)`

Exceptions and with-statement
-----------------------------

{% include_code Exception and Raising Exceptions lang:python except.py %}

{% include_code with statement lang:python with_example.py %}