/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release sumcol.d
*/

import std.stream, std.conv;

const size_t MAXLINELEN = 128;

void main()
{
    int     sum;
    char[]  bufr = new char[MAXLINELEN];
    char[]  line;

    BufferedStream bsi = new BufferedStream(std.stream.stdin,4096);
    while(!bsi.eof)
    {
        line = bsi.readLine(bufr);
        if(line.length) sum += toInt(line);
    }
    bsi.close();

    printf("%d\n", sum);
}
