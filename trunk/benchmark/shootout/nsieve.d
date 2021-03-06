/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   Written by Dima Dorfman, 2004

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release nsieve.d
*/

import std.stdio, std.string;

void main(char[][] args)
{
    bool[] flags;
    int n = args.length > 1 ? atoi(args[1]) : 1;

    int m = 10000 * (1 << n);
    flags.length = m + 1;
    writefln("Primes up to %8d %8d", m, NSieve(flags));

    m = 10000 * (1 << (n - 1));
    flags.length = m + 1;
    writefln("Primes up to %8d %8d", m, NSieve(flags));

    m = 10000 * (1 << (n - 2));
    flags.length = m + 1;
    writefln("Primes up to %8d %8d", m, NSieve(flags));
}

int NSieve(bool[] isPrime)
{
    int count = 0;

    isPrime[] = true;
    for(int i = 2; i < isPrime.length; i++)
    {
        if(isPrime[i])
        {
            for(int k = i + i; k < isPrime.length; k += i) isPrime[k] = false;
            count++;
        }
    }

    return(count);
}
