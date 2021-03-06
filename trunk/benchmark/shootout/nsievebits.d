/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   Written by Dima Dorfman, 2004

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release nsieve.d
*/

import std.stdio, std.string;

void main(char[][] args)
{
    bit[] flags;
    int n = args.length > 1 ? atoi(args[1]) : 1;

    void run_test(int m)
    {
        flags.length = 10000 * (1 << m);
        writefln("Primes up to %8d%8d", flags.length, NSieve(flags));
    }

    run_test(n);
    if(n >= 1)
    {
        int m = n - 1;
        run_test(m);
    }
    if(n >= 2)
    {
        int m = n - 2;
        run_test(m);
    }
}

int NSieve(bit[] isPrime)
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
