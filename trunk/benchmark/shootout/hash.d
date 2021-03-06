/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release hash.d
*/

import std.stdio, std.string;

void main(char[][] args)
{
    int n = args.length > 1 ? atoi(args[1]) : 1;

    char[32]    str;
    int[char[]] X;

    for(int i = 1; i <= n; i++) {
        int len = sprintf(str,"%x",i);
        X[str[0..len].dup] = i;
    }

    int c;
    for(int i = n; i > 0; i--) {
        int len = sprintf(str,"%d",i);
        if(str[0..len] in X) c++;
    }

    writefln(c);
}
