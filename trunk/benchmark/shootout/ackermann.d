// $HeadURL$

// http://www.functionalfuture.com/d/
// http://www.bagley.org/~doug/shootout/

import std.string;

int Ack(int M, int N)
{
    if (M == 0) return( N + 1 );
    if (N == 0) return( Ack(M - 1, 1) );
    return( Ack(M - 1, Ack(M, (N - 1))) );
}

int main(char[][] args)
{
   int n = args.length < 2 ? 1 : std.string.atoi(args[1]);
   printf("Ack(3,%d): %d\n", n, Ack(3, n));
   return(0);
}
