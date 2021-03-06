/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   contributed by Dave Fladebo
   compile: dmd -O -inline -release wc.d
*/

import std.stream;

void main()
{
    int  nl, nw, nc, nread, inword;
    char[4096] buf;

    while((nread = stdin.readBlock(buf, buf.length)) > 0)
    {
        nc += nread;
        for(int idx = 0; idx < nread; idx++)
        {
            switch(buf[idx])
            {
                case '\n':
                    nl++;
                case ' ':
                case '\t':
                    nw += inword;
                    inword = 0;
                    break;
                default:
                    inword = 1;
                    break;
            }
        }
    }

    stdout.writefln("%d %d %d", nl, nw, nc);
}
