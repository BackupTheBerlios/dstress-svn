/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   contributed by Dave Fladebo
   compile: dmd -O -inline -release reversefile.d
*/

import std.stream;

void main()
{
    BufferedStream bsi = new BufferedStream(stdin,4096);
    char[] file = bsi.toString();
    bsi.close();

    int len = file.length - 1;
    BufferedStream bso = new BufferedStream(stdout,4096);
    for(int idx = len; idx >= 0; idx--)
    {
        char c = file[idx];
        if(c == '\n' || idx == 0)
        {
            if(idx == 0) idx--;
            if(idx != len) bso.write(cast(ubyte[])file[idx+1..len+1]);
            len = idx;
        }
    }
    bso.close();
}
