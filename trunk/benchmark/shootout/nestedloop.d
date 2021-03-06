/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release nestedloop.d
*/

import std.stdio, std.string;

void main(char[][] args) {
    int n = args.length > 1 ? atoi(args[1]) : 1;
    int a, b, c, d, e, f, x = 0;

    for(a=0; a<n; ++a)
        for(b=0; b<n; ++b)
            for(c=0; c<n; ++c)
                for(d=0; d<n; ++d)
                    for(e=0; e<n; ++e)
                        for(f=0; f<n; ++f)
                            x++;

    writefln(x);
}
