/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release random.d
*/

import std.stdio, std.string;

void main(char[][] args)
{
	int n = args.length > 1 ? atoi(args[1]) : 1;

    double result = 0.0;
    Random r = new Random();
	while(n--)
    {
		result = r.genRandom(100);
	}
    writefln("%.9f",result);
}

class Random
{
private:
    int last = 42;
    const int IM = 139968;
    const int IA = 3877;
    const int IC = 29573;
public:
    double genRandom(double max)
    {
        return(max * (last = (last * IA + IC) % IM) / IM);
    }
}
