// -*- mode: d -*-
// $HeadURL$

// http://www.functionalfuture.com/d/
// http://www.bagley.org/~doug/shootout/

import std.string;

uint fib(uint n)
{
   if (n < 2)
      return(1);
   else
      return(fib(n-2) + fib(n-1));
}

int main(char[][] args)
{
    int n = args.length < 2 ? 1 : std.string.atoi(args[1]);
    printf("%ld\n", fib(n));
    return(0);
}

