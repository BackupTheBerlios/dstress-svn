/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   contributed by Isaac Gouy

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release fibo.d
*/

import std.stdio, std.string;

void main(char[][] args)
{
    int i = 0, n = args.length > 1 ? atoi(args[1]) : 10000000;

    double partialSum = 0.0;
    for (int i=1; i<=n; i++) partialSum += 1.0/i;

    writefln("%0.9f",partialSum);
}
