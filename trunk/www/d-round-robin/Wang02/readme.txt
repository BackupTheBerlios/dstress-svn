Auhtor:	Wang Zhen (nehzgnaw at gmail.com)
Build:	dmd bf2d.d

A brainfuck to D conversion utility

Brainfuck is a minimalistic Turing-complete programming language,
designed by Urban Müller around 1993. A Brainfuck program has an
implicit pointer, which is free to move around and manipulate an array
of 30000 integers, initially all set to zero. The pointer initially
points to the leftmost element of this array.  There are eight
Brainfuck instructions, represented by a single character
respectively.
> 	move the pointer to the next element to the right
< 	move the pointer to the next element to the left
+ 	increment the value at the pointer.
- 	decrement the value at the pointer.
. 	read the value at the pointer and write it to the standard output.
, 	read a character from the standard input and store its value in the
element at the pointer.
[ 	pass control to the next instruction following the matching ] if
the value at the pointer is zero.
] 	pass control to the next instruction following the matching [ if
the value at the pointer is zero.
Other characters in a Brainfuck program are considered as comment and
ignored by a compiler or interpreter.

Here is a simple "Hello D!" program in Brainfuck:
>+++++++++[<++++++++>-]<.>+++++++[<++++>-]<+.+++++++..+++.>>+++++++
+[<++++>-]<.>+++++++[<+++++>-]<+.>>++++++++[<++++>-]<+.>++++++++++.

Don't have a Brainfuck compiler?  Fret not.  Run BF2D to convert your
BF programs to clean D source code on the fly!  It's also a perfect
tool for D neophytes who have a BF background.

Build instruction (Win32): dmd bf2d.d
Usage: bf2d < %brainfuck-source% > %converted-D-source%

Some more BF programs for readers to play with:

,+[-.,+]
an echo program that copies input to output

>,+[->,+]<[.<]
reverse the input

>>>+>>>>>+>>+>>+[<<],+[--[-[-[-[-[-[-[-[<+>-[>+<-[>-<-[-[-[<++
[<++++++>-]<[>>[-<]<[>]<-]>>[<+>-[<->[-]]]]]]]]]]]]]]]]<[-<<[-
]+>]<<[>>>>>>+<<<<<<-]>[>]>>>>>>>+>[<+[>+++++++++<-[>-<-]++>[<
+++++++>-[<->-]+[+>>>>>>]]<[>+<-]>[>>>>>++>[-]]+<]>[-<<<<<<]>>
>>],+]+<++>>>[[+++++>>>>>>]<+>+[[<++++++++>-]<.<<<<<]>>>>>>>>]
yet another word count program, slightly modified from
Daniel B Cristofani's version (http://www.hevanet.com/cristofd/brainfuck/)

