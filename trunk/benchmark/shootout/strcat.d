/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release strcat.d
*/

import std.stdio, std.string, std.outbuffer;

void main(char[][] args)
{
    int n = args.length > 1 ? atoi(args[1]) : 1;

    OutBuffer ob = new OutBuffer();

    for(int i = 0; i < n; i++)
    {
        ob.write("hello\n");
    }

    writefln(ob.toString().length);
}
