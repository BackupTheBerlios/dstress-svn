// -*- mode: d -*-
// $HeadURL$

// http://www.functionalfuture.com/d/
// http://www.bagley.org/~doug/shootout/

import std.string;

const int IM = 139968;
const int IA = 3877;
const int IC = 29573;

double gen_random(double max)
{
    static int last = 42;    
    last = (last * IA + IC) % IM;
    return( max * last / IM );
}

int main(char[][] args)
{
    int n = args.length < 2 ? 1 : atoi(args[1]);
    double result = 0;
    
    while (n--)
        result = gen_random(100.0);

    printf("%.9f\n", result);
    return(0);
}
