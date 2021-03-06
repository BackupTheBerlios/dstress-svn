/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   Contributed by Dave Fladebo

   compile: dmd -O -inline -release knucleotide.d
*/

import std.ctype, std.outbuffer, std.stdio, std.stream, std.string;

void main()
{
    char[4096]      bufr;
    BufferedStream  bsi = new BufferedStream(std.stream.stdin,bufr.length);
    BufferedStream  bso = new BufferedStream(std.stream.stdout);
    int             offset;
    char[]          desc,line,data,rc = new char[char.max];

    for(char c = 0; c < char.max; c++) rc[c] = revComp(c);

    data.length = bsi.size;
    while(!bsi.eof())
    {
        line = bsi.readLine(bufr);
        if(line.length)
        {
            if(line[0] == '>')
            {
                writeRC(desc,data[0..offset],line,rc,bso);
                offset = 0;
            }
            else
            {
                int end = offset + line.length;
                data[offset..end] = line;
                offset += line.length;
            }
        }
    }
    writeRC(desc,data[0..offset],line,rc,bso);
    bso.close();
}

void writeRC(inout char[] desc,char[] data,char[] line,char[] rc,BufferedStream bso)
{
    if(desc.length)
    {
        const int lineLen = 60;
        char[lineLen+1] lineOut;
        int j,k;

        bso.writefln(desc);
        lineOut[lineLen] = '\n';
        foreach(int i, inout char c; data.reverse)
        {
            lineOut[k] = c = rc[c];

            k++;
            if(k == lineLen)
            {
                bso.write(cast(ubyte[])lineOut);
                j = i + 1;
                k = 0;
            }
        }
        if(k > 0) bso.writefln(data[j..data.length]);
    }

    desc = line.dup;
}

char revComp(char c)
{
    c = std.ctype.toupper(c);

    switch(c)
    {
    case 'A': c = 'T'; break;
    case 'B': c = 'V'; break;
    case 'C': c = 'G'; break;
    case 'D': c = 'H'; break;
    case 'G': c = 'C'; break;
    case 'H': c = 'D'; break;
    case 'K': c = 'M'; break;
    case 'M': c = 'K'; break;
    case 'R': c = 'Y'; break;
    case 'T': c = 'A'; break;
    case 'V': c = 'B'; break;
    case 'Y': c = 'R'; break;
    default :          break;
    }

    return c;
}
