/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release heapsort.d
*/

import std.stdio, std.string;

void main(char[][] args)
{
    int n = args.length > 1 ? atoi(args[1]) : 1;

    double[] ary;

    ary.length = n + 1;
    Random r = new Random();
    for(int i = 1; i <= n; i++)
    {
       ary[i] = r.genRandom(1);
    }

    heapsort(ary);

    writefln("%.10f",ary[n]);
}

void heapsort(double[] ra)
{
    int i, j;
    int ir = ra.length - 1;
    int l = (ir >> 1) + 1;
    double rra;

    for(;;)
    {
        if(l > 1)
        {
            rra = ra[--l];
        }
        else
        {
            rra = ra[ir];
            ra[ir] = ra[1];
            if(--ir == 1)
            {
                ra[1] = rra;
                return;
            }
        }
        i = l;
        j = l << 1;
        while (j <= ir)
        {
            if(j < ir && ra[j] < ra[j+1]) { ++j; }
            if(rra < ra[j])
            {
                ra[i] = ra[j];
                j += (i = j);
            }
            else
            {
                j = ir + 1;
            }
        }
        ra[i] = rra;
    }
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
