/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release ackermann.d
*/

import std.stdio, std.string;

void main(char[][] args)
{
    int n = args.length > 1 ? atoi(args[1]) : 1;

    writefln("Ack(3,",n,"): ",Ack(3, n));
}

int Ack(int M, int N)
{
    if(!M) return N + 1;
    if(!N) return Ack(M-1, 1);
    return(Ack(M-1, Ack(M, N-1)));
}
