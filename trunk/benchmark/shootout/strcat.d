// -*- mode: d -*-
// $HeadURL$

// http://www.functionalfuture.com/d/
// http://dada.perl.it/shootout/

import std.string;

int main(char[][] args)
{
    int n = args.length < 2 ? 1 : atoi(args[1]);
    char[] hello;

    for (int i = 0; i < n; i++)
        hello ~= "hello\n";

    printf("%d\n", hello.length);
    return(0);
}
