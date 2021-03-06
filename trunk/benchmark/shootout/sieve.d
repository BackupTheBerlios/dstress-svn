/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release sieve.d
*/

import std.stdio, std.string;

void main(char[][] args)
{
    int n = args.length > 1 ? atoi(args[1]) : 1;

    char flags[8192 + 1];
    int  count;

    while(n--)
    {
        count = 0; 
        flags[] = 1;
        for(int i = 2; i < flags.length; i++)
        {
            if(flags[i])
            {
                // remove all multiples of prime: i
                for(int j = i + i; j < flags.length; j += i) flags[j] = 0;
                count++;
            }
        }
    }

    writefln("Count: ",count);
}
