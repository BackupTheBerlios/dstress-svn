/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release except.d
*/

import std.stdio, std.string;

void main(char[][] args)
{
    int n = args.length > 1 ? atoi(args[1]) : 1;

    while(n--)
    {
        some_function(n);
    }

    writefln("Exceptions: HI=",HI," / LO=",LO);
}

size_t HI = 0;
size_t LO = 0;

class Hi_exception
{
public:
    this(size_t _n) { n = _n; }
    char[] what() { return(std.string.toString(n)); }
private:
    size_t n;
}

class Lo_exception
{
public:
    this(size_t _n) { n = _n; }
    char[] what() { return(std.string.toString(n)); }
private:
    size_t n; char N[8];
}

void blowup(size_t num)
{
    if(num % 2)
    {
        throw new Lo_exception(num);
    }
    throw new Hi_exception(num);
}

void lo_function(size_t num)
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

void hi_function(size_t num)
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

void some_function(size_t num)
{
    try
    {
        hi_function(num);
    }
    catch
    {
        fwritefln(stderr,"We shouldn't get here");
    }
}
