// -*- mode: d -*-
// $HeadURL$

// http://www.functionalfuture.com/d/
// http://www.bagley.org/~doug/shootout/
// ported from Bill Lear's C++ version 

import std.string;
import std.stdio;

uint HI = 0;
uint LO = 0;

class Hi_exception
{
    uint n; 
    char[8] N;

    this(uint _n) { n = _n; }
    char[] what() { sprintf(N, "%d", n); return N; }
}

class Lo_exception
{
    uint n; 
    char[8] N;

    this(uint _n) { n = _n; }
    char[] what() { sprintf(N, "%d", n); return N; }
}

void blowup(uint num)
{
    if (num % 2)
    {
        throw new Lo_exception(num);
    }
    throw new Hi_exception(num);
}

void lo_function(uint num) 
{
    try 
    {
        blowup(num);
    }
    catch(Lo_exception ex)
    {
        ++LO;
    }
}

void hi_function(uint num)
{
    try
    {
        lo_function(num);
    } 
    catch(Hi_exception ex)
    {
        ++HI;
    }
}

void some_function(uint num) {
    try
    {
        hi_function(num);
    }
    catch
    {
        printf("We shouldn't get here\n");
    }
}

int
main(char[][] args)
{
    uint NUM = args.length < 2 ? 1 : std.string.atoi(args[1]);
    while (NUM--)
    {
        some_function(NUM);
    }

    printf("Exceptions: HI=%u LO=%u\n", HI, LO);

    return 0;
}
