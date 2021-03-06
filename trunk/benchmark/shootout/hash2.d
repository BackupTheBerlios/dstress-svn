/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release hash2.d
*/

import std.stdio, std.string;

void main(char[][] args)
{
    int n = args.length > 1 ? atoi(args[1]) : 1;

    char[16]    str;
    int[char[]] X0;
    int[char[]] X1;

    for(int i = 0; i <= 9999; i++)
    {
        int len = sprintf(str,"foo_%d",i);
        X0[str[0..len].dup] = i;
    }

    char[][]    keys = X0.keys;
    int[]       vals = X0.values;
    for(int i = 0; i < n; i++)
    {
        foreach(int j, char[] key; keys)
        {
            X1[key] += vals[j];
        }
    }

    writefln("%d %d %d %d",
       X0["foo_1"],
       X0["foo_9999"],
       X1["foo_1"],
       X1["foo_9999"]);
}
