/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   Contributed by Brent Fulgham

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release takfp.d
*/

import std.string, std.stdio;

void main(char[][] args)
{
    int n = args.length > 1 ? atoi(args[1]) : 1;
 
    writefln("%.1f", Tak(n*3.0, n*2.0, n*1.0));
}

double Tak(double x, double y, double z)
{
    if(y >= x) return z; 
    return(Tak(Tak(x-1,y,z), Tak(y-1,z,x), Tak(z-1,x,y)));
}
