// -*- mode: d -*-
// $HeadURL$

// http://www.functionalfuture.com/d/
// http://dada.perl.it/shootout/

import std.string;

char[] itoa(int v, int base)
{
   char[] output = new char[32];
   int pos = output.length - 2;
   
   do
   {  output[pos--] = hexdigits[v % base];
   } while ((v /= base) != 0);

   return output[pos+1 .. output.length-1];
}

int main(char[][] args)
{
   int n = args.length < 2 ? 1 : std.string.atoi(args[1]);
   int c = 0;
   int[char[]] X;
    
   for(int i=1; i<=n; i++)
      X[itoa(i,16)] = i;
    
   for(int i=n; i>0; i--)
      if(itoa(i,10) in X) c++;

   printf("%d\n", c);
   return(0);
}
