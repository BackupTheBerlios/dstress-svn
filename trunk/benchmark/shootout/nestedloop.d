// -*- mode: d -*-
// $HeadURL$

// http://www.functionalfuture.com/d/
// http://www.bagley.org/~doug/shootout/

import std.string;

int main(char[][] args)
{
   int n = args.length < 2 ? 1 : std.string.atoi(args[1]);
   int a, b, c, d, e, f, x=0;
    
   for (a=0; a<n; a++)
      for (b=0; b<n; b++)
         for (c=0; c<n; c++)
            for (d=0; d<n; d++)
               for (e=0; e<n; e++)
                  for (f=0; f<n; f++)
                     x++;

   printf("%d\n", x);
   return(0);
}
