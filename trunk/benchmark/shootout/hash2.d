/* -*- mode: d -*-
 * $HeadURL$
 *
 * http://www.functionalfuture.com/d/
 * http://www.bagley.org/~doug/shootout/
 */

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
    int i, n = args.length < 2 ? 1 : std.string.atoi(args[1]);
    char buf[32];
    int[char[]] ht1;
    int[char[]] ht2;

    for (i=0; i<=9999; ++i)
        ht1["foo_" ~ itoa(i,10)] = i;

    char[][] ks = ht1.keys;

    for (i=0; i<n; ++i)
        for (int j = 0; j < ks.length; j++)
            ht2[ks[j]] += ht1[ks[j]];

    printf("%d %d %d %d\n",
       ht1["foo_1"],
       ht1["foo_9999"],
       ht2["foo_1"],
       ht2["foo_9999"]);

    return(0);
}
