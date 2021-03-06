/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release spellcheck.d
*/

import std.stream;

const int MAXLINELEN = 128;

void main()
{
    byte[char[]]    da;
    char[]          bufr = new char[MAXLINELEN];

    BufferedFile dct = new BufferedFile("Usr.Dict.Words");
    while(!dct.eof)
    {
        da[dct.readLine(bufr).dup];
    }
    dct.close();

    char[]          line;
    BufferedStream  bsi = new BufferedStream(std.stream.stdin, 4096);
    BufferedStream  bso = new BufferedStream(std.stream.stdout,4096);
    while(!bsi.eof)
    {
        line = bsi.readLine(bufr);
        if(!(line in da)) bso.writeLine(line);
    }
    bso.close();
    bsi.close();
}
