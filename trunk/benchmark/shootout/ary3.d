// -*- mode: d -*-
// $HeadULR$

// http://www.functionalfuture.com/d/
// http://www.bagley.org/~doug/shootout/
//
// this program is modified from:
//   http://cm.bell-labs.com/cm/cs/who/bwk/interps/pap.html
// Timing Trials, or, the Trials of Timing: Experiments with Scripting
// and User-Interface Languages</a> by Brian W. Kernighan and
// Christopher J. Van Wyk.

import std.string;

int main(char[][] args)
{
   int n = args.length < 2 ? 1 : std.string.atoi(args[1]);
   int i, k;

   int[] x = new int[n];
   int[] y = new int[n];

   for (i = 0; i < n; i++)
      x[i] = i + 1;

   for (k=0; k < 1000; k++)
   {
      for (i = n - 1; i >= 0; i--)
         y[i] += x[i];
   }

   printf("%d %d\n", y[0], y[n-1]);

   return 0;
}
