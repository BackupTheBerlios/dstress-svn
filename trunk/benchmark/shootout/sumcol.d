// -*- mode: d -*-
// $HeadURL$

// http://www.functionalfuture.com/d/
// http://www.bagley.org/~doug/shootout/

import std.string;
import std.stream;

int main()
{
   int sum = 0;
   char[] line;

   while ((line = stdin.readLine()).length)
      sum += atoi(line);

   printf("%d\n", sum);
   return(0);
}

