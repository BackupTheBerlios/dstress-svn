// -*- mode: d -*-
// $HeadURL$

// http://www.functionalfuture.com/d/
// http://www.bagley.org/~doug/shootout/

import std.string;

int main(char[][] args)
{
   int n = args.length < 2 ? 1 : atoi(args[1]);
   char flags[8192 + 1];
   int i, k;
   int count = 0;

   while (n--)
   {
      count = 0; 

      for (i = 2; i <= 8192; i++)
         flags[i] = 1;

      for (i = 2; i <= 8192; i++)
      {
         if (flags[i])
         {
            // remove all multiples of prime: i
            for (k = i+i; k <= 8192; k += i)
               flags[k] = 0;

            count++;
         }
      }
   }

   printf("Count: %d\n", count);

   return(0);
}

